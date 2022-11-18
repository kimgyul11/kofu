package com.kofu.infra.modules.member;

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

import com.kofu.infra.common.constants.Constants;
import com.kofu.infra.common.util.UtilSecurity;
@Controller
@RequestMapping(value = "/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	
	@RequestMapping(value = "/airMypage")
	public String airMypage(@ModelAttribute("vo")MemberVo vo,Model model) throws Exception {
		Member profile = service.profileImg(vo);
		model.addAttribute("profile",profile);
		
		List<Member> list = service.mypageQueSelect(vo);
		model.addAttribute("list",list);
		
		List<Member> ansList = service.mypageAnsSelect(vo);
		model.addAttribute("ansList",ansList);
		
		Member result = service.myPageSelect(vo);
		model.addAttribute("item",result);
		
		List<Member> pickList = service.mypagePickSelect(vo);
		model.addAttribute("pickList",pickList);
	return "infra/login/xdmin/airMypage";
	}
	
	//마이페이지 업데이트
	@ResponseBody
	@RequestMapping(value = "/mypageform")
	public Map<String, Object> mypageform(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		service.mypageMod(dto);
		returnMap.put("rt", "success");

		return returnMap;
	}
	
	
	@RequestMapping(value = "/mypageMod")
	public String mypageMod(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.mypageMod(dto);
		return "redirect:/airMypage";
	}
	
	
	
	
	
	
	@RequestMapping(value = "/member/memberlist")
	public String codeGroupList(Model model,MemberVo vo) throws Exception {

		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberlist";
	}
	
	@RequestMapping(value = "/member/memberform")
	public String memberForm() {
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(MemberVo vo, Model model) throws Exception{
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		

		
		Member result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "/member/MemberInst")
	public String memberInst(Member dto) throws Exception{
		int result = service.insert(dto);
		System.out.println("controller result: "+result);
		return "redirect:/member/memberlist";
	}
	

	
//	신규 회원가입 페이지
	@RequestMapping(value = "/member/airSignupView")
	public String airSignup(Model model,MemberVo vo) throws Exception {
		
		return "infra/login/xdmin/airSignup";
	}
	
	@RequestMapping(value = "/member/airSignup")
	public String airSignUp(Member dto) throws Exception{
		service.airSignUp(dto);
		return "infra/login/xdmin/logincomplete";
	}


	
	@ResponseBody
	@RequestMapping(value = "/member/checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneId(dto);
		
		if (rtMember != null) {
			dto.setUser_pw(UtilSecurity.encryptSha256(dto.getUser_pw()));
			Member rtMember2 = service.selectOneLogin(dto);
			if (rtMember2 != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMemberSeq());
				httpSession.setAttribute("sessId", rtMember2.getUser_id());
				httpSession.setAttribute("sessName", rtMember2.getUser_name());
				returnMap.put("rt", "success");
			} else {
				dto.setMemberSeq(rtMember.getMemberSeq());
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}	
		return returnMap;
	}	
	
	@ResponseBody
	@RequestMapping(value = "/member/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	//로그인 완료--------------------------------------------------------------
	@RequestMapping(value = "complete")
	public String complete() {
		
		return "infra/login/xdmin/logincomplete";
	}
//-----------------------------------카카오 로그인
	
	@ResponseBody
	@RequestMapping(value = "/member/kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member kakaoLogin = service.snsLoginCheck(dto);
		
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

	 public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getMemberSeq());    
	     httpSession.setAttribute("sessId", dto.getUser_id());
	     httpSession.setAttribute("sessName", dto.getUser_name());
	     httpSession.setAttribute("sessEmail", dto.getUser_email());
	     
	 }	 
	 
// -------------네이버로그인        ---------------------
	 @ResponseBody
		@RequestMapping(value = "/member/naverLoginProc")
		public Map<String, Object> navLoginProc(Member dto, HttpSession httpSession) throws Exception {
		    Map<String, Object> returnMap = new HashMap<String, Object>();
		    
			Member kakaoLogin = service.snsLoginCheck(dto);
			
			if (kakaoLogin == null) {
				service.kakaoInst(dto);
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
	            session(dto, httpSession); 
				returnMap.put("rt", "success");
			} else {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				
				// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
				session(kakaoLogin, httpSession);
				returnMap.put("rt", "success");
			}
			return returnMap;
		}
	 
	 
}
