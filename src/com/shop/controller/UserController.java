package com.shop.controller;

import com.shop.po.User;
import com.shop.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	//查询个人信息
	@RequestMapping("/searchUserInfo")
	public String searchUserInfoByName( Model model, HttpServletRequest request) throws Exception{
		User loginUser = (User) request.getSession().getAttribute("loginUser");
		String username = loginUser.getUsername();
		List<User> list = userService.selectUserByUserName(username);
		model.addAttribute("list", list);
		return "userInfo";
	}
	//修改个人信息
	@RequestMapping("/updateUserInfo")
	public String  updateUserInfo (User user,Model model, HttpServletRequest request)throws  Exception{
		User loginUser = (User) request.getSession().getAttribute("loginUser");
		userService.activeUser(user);
		return "redirect:/searchUserInfo.action";

	}
}
