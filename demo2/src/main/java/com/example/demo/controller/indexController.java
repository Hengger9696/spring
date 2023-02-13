package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {
		
		@RequestMapping("/")
		public String index(Model m) {
			m.addAttribute("message","Hello Spring Boot!");
			return "index";
		}
}
