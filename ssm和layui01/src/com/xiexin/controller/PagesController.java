package com.xiexin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PagesController {
    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/main")
    public String main(){
        return "main";
    }
    @RequestMapping("/addBusiness")
    public String addBusiness(){
        return "addBusiness";
    }
    @RequestMapping("/vuedemo000")
    public String vuedemo000(){
        return "vuedemo000";
    }
    @RequestMapping("/vuedemo001")
    public String vuedemo001(){
        return "vuedemo001";
    }
}
