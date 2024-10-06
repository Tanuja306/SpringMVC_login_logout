package test.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import test.beans.student;
import test.dao.studentDao;

@Controller
public class studentController{

	@Autowired
	studentDao sd;
	
	@RequestMapping("/savedata")
	public String one(@ModelAttribute("s1") student s1)
	{
		List<student> existstd=sd.studentcheck(s1);
		if(!existstd.isEmpty())
			
		{
			return "redirect:/index";
		}
		
		
	    if(s1.getSpass().equals(s1.getScpass()))
		{
		sd.registerdata(s1);
		return "redirect:/login";
		}
	    else
	    {
		return "redirect:/index";
	    }
	}
	
	@RequestMapping("/login")
	public String two()
	{
		return null;
	}
	
	@RequestMapping("/checkdata")
	public String three(@ModelAttribute("s1") student s1,HttpSession sk)
	{
		List<student> l1=sd.checkdata(s1);
		if(l1.isEmpty())
		{
		return "redirect:/login";
		}
		sk.setAttribute("temp", s1.getSemail());
		return "redirect:/dash";
	}
	
	@RequestMapping("/dash")
	public String four(HttpSession hs)
	{
		String x=(String) hs.getAttribute("temp");
		if(x==null)
		{
		return "redirect:/login";
		}
		return "dash";
		
	}
	
	@RequestMapping("/logout")
	public String five(HttpSession hs)
	{
		hs.invalidate();
		return "redirect:/login";
	}
	
	@RequestMapping("/forgotpass")
	public String six()
	{
		
		return "redirect:/forgot";
	}
	
	@RequestMapping("/forgotpass")
	public String seven(@ModelAttribute("s1") student s1)
	{
		sd.forget(s1);
		return "redirect:/login";
	}
	
	
	
	
}
