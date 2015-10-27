package com.lit.hw1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lit.hw1.dao.StudentDao;
import com.lit.hw1.dto.Student;
import java.util.ArrayList;

@Controller
public class MainController {

	@Autowired
	StudentDao studentDao;
	
	@RequestMapping(value = {"/","home"} ,  method = RequestMethod.GET)
	public String homePage(ModelMap model){
		model.addAttribute("message","Hello Home Page");
		model.addAttribute("listStudent", studentDao.list());
		return "home";
	}
	
	@RequestMapping(value = "add" ,  method = RequestMethod.GET)
	public String addPage(ModelMap model){
		model.addAttribute("message","This is Add Page");
		return "add";
	}
	
	@RequestMapping(value = "update" ,  method = RequestMethod.GET)
	public String updatePage(ModelMap model){
		model.addAttribute("message","This is Update Page");
		return "update";
	}
	
	@RequestMapping(value = "detail" ,  method = RequestMethod.GET)
	public String detailPage(ModelMap model){
		model.addAttribute("message","This is Detail Page");
		return "detail";
	}
}
