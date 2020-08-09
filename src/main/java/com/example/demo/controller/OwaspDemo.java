package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class OwaspDemo {
 
    @RequestMapping("/owasp-demo")
    public String OwaspDemo(ModelMap model) {
    	model.addAttribute("message", "<h1>Programmer Gate</h1>");
         
        return "owasp-demo";
    }
}