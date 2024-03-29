package com.kofu.infra.modules.home;


import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;



@Controller
public class HomeController {
	@Autowired
	HomeServiceImpl service;
	
	@RequestMapping(value = "/")
	public String startHome() {
		return "infra/home/xdmin/startpage";
	}
	
	@RequestMapping(value = "airLanguageHome")
	public String airLanguageHome(Model model,HomeVo vo) throws Exception {
		 System.out.println("vo.getShValue(): " + vo.getShValue());
		 System.out.println("vo.getShOption(): " + vo.getShOption());
		 vo.setParamsPaging(service.selectOenCount(vo));
		 service.homeSearch(vo);
		
		return "infra/home/xdmin/airLanguageHome";
	}
	
	@RequestMapping(value = "airLogin")
	public String airLogin() {
		return "infra/login/xdmin/airLogin";
	}
	
	
	@RequestMapping(value = "quelist")
	public String quelist(@ModelAttribute("vo")HomeVo vo,Model model,RedirectAttributes redirectAttributes)throws Exception {
		
		
		vo.setParamsPaging(service.selectOenCount(vo));
		List<Home>list = service.selectList(vo);
		model.addAttribute("list", list);

		redirectAttributes.addFlashAttribute("vo",vo);
		return "infra/home/xdmin/airQuestionList";
	}
	
	//질문 상세화면------------------------------------------------------------------
	@RequestMapping(value = "queview")
	public String queview(Home dto,@ModelAttribute("vo") HomeVo vo,Model model,RedirectAttributes redirectAttributes) throws Exception {
		
		
		Home result = service.selectOne(vo);
		model.addAttribute("item",result);
		
		List<Home>listCount = service.likeListCnt(dto);
		model.addAttribute("listCount", listCount);
	

		
		List<Home>homeList = service.selectAns(vo);
		model.addAttribute("homeList", homeList);
		
		Home bookmar =  service.bookmarklist(dto);
		model.addAttribute("bookmar",bookmar);
		
		
		vo.setAnsSeq(dto.getAnsSeq());
			
		redirectAttributes.addFlashAttribute("vo",vo);
		return "infra/home/xdmin/questionView";
	}

	
//	-----------------------------------질문작성페이지------------------------------------------
	@RequestMapping(value = "quereg")
	public String quereg() {
		
		return "infra/home/xdmin/questionReg";
	}
	
	@RequestMapping(value = "questionInst")
	public String questionInst(Home dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: "+ result);
		
		
		return "infra/home/xdmin/airQuestionList";
	}

// -------------------------------------답변작성페이지------------------------------------------
	@RequestMapping(value = "answerInst")
	public String answerInst(HomeVo vo ,Home dto,RedirectAttributes redirectAttributes) throws Exception {
		int result = service.ansInsert(dto);
		vo.setAnsSeq(dto.getAnsSeq());
		System.out.println("controller result : " + result);
		
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:queview";
	}
	
	
	@RequestMapping(value = "qlbookmark")
	public String bookmarkInst(Home dto,HomeVo vo,RedirectAttributes redirectAttributes) throws Exception{
		int result = service.bookmarkInst(dto);
		vo.setQuestionSeq(dto.getQuestionSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo);
		
		System.out.println("controller result: "+result);
		return "redirect:/queview";
	}

	//----------------------------좋아요 ajax-----------------------
	@ResponseBody
	@RequestMapping(value = "/likeProc")
	public Map<String, Object> wishProc(Home dto, HttpSession httpSession,Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int ckWish = service.likeCheck(dto);
		
		if(ckWish == 0) {
			service.likeInsert(dto);
			List<Home> WList = service.likeListCnt(dto);
			model.addAttribute("WList",WList);
			
			returnMap.put("WList",WList);
			returnMap.put("rt", "success");
		} else if(ckWish == 1) {
			service.likedelete(dto);
			List<Home> WList = service.likeListCnt(dto);
			model.addAttribute("WList",WList);
			
			returnMap.put("WList",WList);
			returnMap.put("rt", "delete");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	//-------------------------북마크 ajax-------------------------
	@ResponseBody
	@RequestMapping(value = "/bookmarkproc")
	public Map<String, Object> bookmarkproc(Home dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int ckbookmark = service.bookmarkcheck(dto);
		
		if(ckbookmark == 0) {
			service.bookmarkInst(dto);
			returnMap.put("rt", "success");
		} else if(ckbookmark == 1) {
			service.bookmarkDel(dto);
			returnMap.put("rt", "delete");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	//---------------------답변 채택하기--------------------
	@RequestMapping(value = "answerSelect")
	public String answerSelect(HomeVo vo,Home dto,RedirectAttributes redirectAttributes) throws Exception{
		service.answerSelect(dto);
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/queview";
	}
	
	
	//질문삭제
	@RequestMapping(value = "ansDelete")
	public String answerDelete(Home dto) throws Exception{
		service.answerDelete(dto);
		return "quelist";
	}
	//답변삭제
	@RequestMapping(value = "questionDelete")
	public String questionDelete(Home dto) throws Exception{
		service.questionDelete(dto);
		return "quelist";
	}
	
	
	
	
	
	//파파고API
	@ResponseBody
	@RequestMapping(value = "trans")
	public String trans(@RequestParam("str") String str) throws Exception {
		
        String clientId = "CUXXzgBAZVY0KJRwJJ3C";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "s5G0TDf1AS";//애플리케이션 클라이언트 시크릿값";

        String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
        String text;
        try {
            text = URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("인코딩 실패", e);
        }

        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", clientId);
        requestHeaders.put("X-Naver-Client-Secret", clientSecret);

        String responseBody = post(apiURL, requestHeaders, text);

        System.out.println(responseBody.getClass().getName());
        System.out.println(responseBody);
        
        return responseBody;
    }

    private static String post(String apiUrl, Map<String, String> requestHeaders, String text){
        HttpURLConnection con = connect(apiUrl);
        String postParams = "source=ko&target=en&text=" + text; //원본언어: 한국어 (ko) -> 목적언어: 영어 (en)
        try {
            con.setRequestMethod("POST");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }

            con.setDoOutput(true);
            try (DataOutputStream wr = new DataOutputStream(con.getOutputStream())) {
                wr.write(postParams.getBytes());
                wr.flush();
            }

            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 응답
                return readBody(con.getInputStream());
            } else {  // 에러 응답
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }

    private static HttpURLConnection connect(String apiUrl){
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }

    private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);

        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();

            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }

            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }
	
    
    
	
	//-------------------------api테스트----------------------
	@RequestMapping(value = "/test/publicCorona1List")
	public String publicCorona1List(Model model) throws Exception {
		
		System.out.println("asdfasdfasdf");
		
		String apiUrl = "http://apis.data.go.kr/B551177/StatusOfPassengerWorldWeatherInfo/getPassengerArrivalsWorldWeather?serviceKey=t4NbJEljOJc15d9vAm5T1cdsT3wG5o8PYQB%2F%2FNrRfKNcKmNQHCLhlqzf9O6rKmhdXG67a4B2YLayH7sjO%2BOCTQ%3D%3D&numOfRows=10&pageNo=1&from_time=0000&to_time=2400&lang=K&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		
//		json object + array string -> java map
		
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
        
		Map<String, Object> response = new HashMap<String, Object>();
		response = (Map<String, Object>) map.get("response");
		
        System.out.println("######## Map");
		for (String key : response.keySet()) {
			String value = String.valueOf(response.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}

		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) response.get("header");
		
		System.out.println("######## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
//		String aaa = (String) header.get("resultCode");
		
//		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
//		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) response.get("body");
		
		List<Home> items = new ArrayList<Home>();
		items = (List<Home>) body.get("items");
		
		
		System.out.println("items.size(): " + items.size());
		
//		for(Home item : items) {
//			System.out.println(item.getMM());
//		}
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		
		return "infra/test/publicCorona1List";
	}

}
