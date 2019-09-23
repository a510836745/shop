package com.shop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.exception.zdyException;
import com.shop.po.User;
import com.shop.service.UserService;


@Controller
public class registController {
	@Autowired
	private UserService userService;

	@RequestMapping("regist")
	public String regist() {
		return "regist";
	}

	@RequestMapping("/userRegist")
	public String userRegist(Model model, HttpServletRequest request,
			@Validated User user, BindingResult bindingResult,
			@RequestParam String checkImg) throws Exception {
		if (bindingResult.hasErrors()) {
			List<ObjectError> errors =bindingResult.getAllErrors();
			List<String> list = new ArrayList<>();
			for (ObjectError objectError : errors) {
				String str = new String(objectError.getDefaultMessage()
						.getBytes("ISO-8859-1"), "gbk");
				list.add(str);
			}
			model.addAttribute("errors", list);
			return "regist";
		}
		// 查看验证码
		String sessionCode = (String) request.getSession().getAttribute(
				"checkcode");
		if (!sessionCode.equalsIgnoreCase(checkImg)) {
//			model.addAttribute("message", "验证码错误请重新注册");
			throw new zdyException("验证码错误请重新注册");
		}
		// 开始写入数据库
		userService.saveUser(user);
		model.addAttribute("message", "注册成功请登录");
		return "msg";
	}

	
}
