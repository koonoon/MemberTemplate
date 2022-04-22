package com.icia.tmember.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.tmember.dto.MemberDTO;
import com.icia.tmember.service.MemberService;

@Controller
public class MemberController {
	
	// ModelAndView를 사용하기 위해 mav 객체 생성
	private ModelAndView mav = new ModelAndView();
	
	// Controller와 Service를 연결
	@Autowired
	private MemberService msvc;
	
	// Session 사용
	@Autowired
	private HttpSession session;
	

	// 프로젝트 실행 시 첫 페이지 설정
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		
		return "index";
		
		// /WEB-INF/views/index.jsp
	}
	
	// index페이지로 
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index1() {
		return "index";
	}
	
	// joinForm : 회원가입 페이지로 이동
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "M_Join";	// /WEB-INF/views/joinForm.jsp
	}
	
	// directive : include예제 확인 페이지로 이동
	@RequestMapping(value = "/directive", method = RequestMethod.GET)
	public String includeEx() {
		return "Body";	
	}
	
	// loginForm : 로그인 페이지로 이동
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "M_Login";
	}
	
	
	// memberJoin : 회원가입 메소드
	@RequestMapping(value = "/memberJoin", method = RequestMethod.POST)
	public ModelAndView mJoin(@ModelAttribute MemberDTO member) {
		System.out.println("[1]가입 controller : " + member);
		
		mav = msvc.mJoin(member);
		// msvc.mJoin(member);
		// MemberService의 mJoin(member) 메소드를 호출한다.
		// MemberService의 mJoin(member) 메소드의 리턴값을 가져온다.
		// MemberService의 mJoin()로 member의 데이터를 가지고 이동한다.
		
		System.out.println("[5]가입 controller : " + mav + "\n");
		
		return mav;
	}
	
	// mList : 회원목록 메소드
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public ModelAndView mList() {
		System.out.println("[1]목록 controller");
		
		mav = msvc.mList();
		
		System.out.println("[5]목록 controller : " + mav + "\n");
		
		return mav;
	}
	
	// memberView : 회원정보 상세보기 메소드
	@RequestMapping(value = "/memberView", method = RequestMethod.GET)
	public ModelAndView mView(@RequestParam("fId") String fId) {
		// @RequestParam("mId") String mId
		// String타입의 변수 mId에 jsp에서 넘어온 mId를 넣는다.
		
		System.out.println("[1]상세 controller : " + fId);
		
		mav = msvc.mView(fId);
		
		System.out.println("[5]상세 controller : " + mav + "\n");
		
		return mav;
	}
	
	// memberDelete : 회원정보 삭제 메소드
	@RequestMapping(value = "/memberDelete", method = RequestMethod.GET)
	public ModelAndView mDelete(@RequestParam("fId") String fId) {
		System.out.println("[1]삭제 controller : " + fId);
		
		mav = msvc.mDelete(fId);
		
		System.out.println("[5]삭제 controller : " + mav + "\n");
		
		return mav;
	}
	
	// memberModiForm : 회원정보 수정 페이지로 이동
	@RequestMapping(value = "/memberModiForm", method = RequestMethod.GET)
	public ModelAndView mModiForm(@RequestParam("fId") String fId) {
		System.out.println("[1]수정p controller : " + fId);
		
		mav = msvc.mModiForm(fId);
		
		System.out.println("[5]수정p controller : " + mav + "\n");
	
		return mav;
	}
	
	// memberModify : 회원정보 수정 메소드
	@RequestMapping(value = "/memberModify", method = RequestMethod.POST)
	public ModelAndView mModify(@ModelAttribute MemberDTO member) throws UnsupportedEncodingException {
		System.out.println("[1]수정 controller : " + member);
		
		mav = msvc.mModify(member);
		
		System.out.println("[5]수정 controller : " + mav + "\n");
		
		return mav;
	}
	
	// memberLogin : 로그인하기
	@RequestMapping(value="/memberLogin", method=RequestMethod.POST)
	public ModelAndView mLogin(@ModelAttribute MemberDTO member) {
		System.out.println("[1]로그인 controller : " + member);
		mav = msvc.mLogin(member);
		System.out.println("[5]로그인 controller : " + mav + "\n");
		return mav;
	}
	
	// logout : 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String mLogout() {
		session.invalidate();
		return "index";
	}
	
	
	
}






