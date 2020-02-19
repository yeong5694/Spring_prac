package ac.kr.yeong.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class loginController {
	
	@RequestMapping(value = "/login")
	public String showlogin(Model model) {
		
		return "login";
	}

}
