package com.kofu.infra.modules.home;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
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
		 service.homeSearch(vo);
		
		return "infra/home/xdmin/airLanguageHome";
	}
	
	@RequestMapping(value = "airLogin")
	public String airLogin() {
		return "infra/login/xdmin/airLogin";
	}
	
	
	@RequestMapping(value = "quelist")
	public String quelist(@ModelAttribute("vo")HomeVo vo,Model model)throws Exception {
		
		
		vo.setParamsPaging(service.selectOenCount(vo));
		List<Home>list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/home/xdmin/airQuestionList";
	}
	
	//질문 상세화면------------------------------------------------------------------
	@RequestMapping(value = "queview")
	public String queview(Home dto,@ModelAttribute("vo") HomeVo vo,Model model,RedirectAttributes redirectAttributes) throws Exception {
		
		
		Home result = service.selectOne(vo);
		model.addAttribute("item",result);
		
		List<Home>homeList = service.selectAns(vo);
		model.addAttribute("homeList", homeList);
		vo.setAnsSeq(dto.getAnsSeq());
		System.out.println(vo.getAnsSeq());
			
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
		
		
		return "redirect:quelist";
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
	public Map<String, Object> wishProc(Home dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int ckWish = service.likeCheck(dto);
		
		if(ckWish == 0) {
			service.likeInsert(dto);
			returnMap.put("rt", "success");
		} else if(ckWish == 1) {
			service.likedelete(dto);
			returnMap.put("rt", "delete");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	//-------------------------북마크 ajax-------------------------
	@ResponseBody
	@RequestMapping(value = "/bookmark")
	public Map<String, Object> bookmark(Home dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int ckWish = service.likeCheck(dto);
		
		if(ckWish == 0) {
			service.likeInsert(dto);
			returnMap.put("rt", "success");
		} else if(ckWish == 1) {
			service.likedelete(dto);
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
