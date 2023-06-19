package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	@RequestMapping("/")
	public String login() {
		return "login";
	}
	@RequestMapping("/login")
	@ResponseBody
	public String loginajax(@RequestParam("id") String id,@RequestParam("pw") int pw) {
		if(id.equals("abcd")&&pw==1234) {
			return "{\"result\" : \"login ok\"}";
		}			
		return "{\"result\" : \"login fail\"}";
	}
}
