package com.lit.hw1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lit.hw1.dao.StudentDao;
import com.lit.hw1.dto.Student;

@Controller
public class MainController {

	@Autowired
	StudentDao studentDao;
	
	static String delete_status;
	
	@RequestMapping(value = "/" ,  method = RequestMethod.GET)
	public String homePage(ModelMap model){
		model.addAttribute("delete_status", delete_status);
		model.addAttribute("listStudent", studentDao.list());
		System.out.println("home page");
		return "home";
	}
	
	@RequestMapping(value = "/add" ,  method = RequestMethod.GET)
	public String addPage(ModelMap model){
		model.addAttribute("message","This is Add Page");
		System.out.println("add page");
		return "add";
	}

	@RequestMapping(value = "add" ,  method = RequestMethod.POST)
	public String add(ModelMap model){
		model.addAttribute("student" , new Student());
		System.out.println("add action");
		return "redirect:/add";
	}


	@RequestMapping(value = "/update" ,  method = RequestMethod.GET)
	public String updatePage(ModelMap model){
		model.addAttribute("message","This is Update Page");
		System.out.println("update page");
		return "update";
	}
	
	@RequestMapping(value = "delete" ,  method = RequestMethod.POST)
	public String delete(ModelMap model,  @RequestParam(value="id", required=true) int stuId){
		System.out.println("delete action" + stuId);
		System.out.println(studentDao.delete(stuId));		
		return "redirect:/";
	}
	
/*	
	@RequestMapping(value = "update" ,  method = RequestMethod.POST)
	public String update(ModelMap model){
		model.addAttribute("student" , new Student());
		return "home";
	}
	@RequestMapping(value = "show" ,  method = RequestMethod.GET)
	public String showPage(ModelMap model){
		model.addAttribute("message","This is Detail Page");
		return "show";
	}*/
}
