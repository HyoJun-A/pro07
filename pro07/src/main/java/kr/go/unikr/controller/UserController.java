package kr.go.unikr.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import kr.go.unikr.DTO.UserDTO;
import kr.go.unikr.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserService userService;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	HttpSession session;
	
	@GetMapping("loginForm.do")
	public String loginForm() {
		return "user/login";
	}
	
	@PostMapping("login.do")
	public String login(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model) throws Exception{
		session.invalidate();
		UserDTO dto = new UserDTO();
		dto.setPw(pw);
		dto.setId(id);
		UserDTO login = userService.userLogin(dto);
		boolean loginSuccess = pwdEncoder.matches(dto.getPw(), login.getPw());
		if(loginSuccess && login!=null) {
			session.setAttribute("sid", login.getId());
			session.setAttribute("sname", login.getName());
			return "redirect:/";
		} else {
			return "redirect:loginForm.do";
		}
	};
	
	@GetMapping("agree.do")
	public String agree() throws Exception{
		return "user/agree";
	}
	
	@GetMapping("signup.do")
	public String signupForm() throws Exception{
		return "user/signup";
	}

	@PostMapping("signUp.do")
	public String signUp(@RequestParam("id") String id, @RequestParam("pw") String pw, @RequestParam("tel") String tel, @RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("addr1") String addr1, @RequestParam("addr2") String addr2, Model model) throws Exception{
		String addr = addr1 + " " + addr2;
		String pwd = pwdEncoder.encode(pw);
		UserDTO dto = new UserDTO();
		dto.setId(id);
		dto.setPw(pwd);
		dto.setName(name);
		dto.setTel(tel);
		dto.setEmail(email);
		dto.setAddr(addr);
		userService.signUp(dto);
		return "redirect:/";
	}
	
	@GetMapping("logout.do")
	public String logOut() {
		session.invalidate();
		return "redirect:/";
	}
}
