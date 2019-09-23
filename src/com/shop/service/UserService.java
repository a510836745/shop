package com.shop.service;

import java.util.List;

import com.shop.po.Adminuser;
import com.shop.po.User;


public interface UserService {

	//登录时验证用户名是否存在
	public User loginFindByid(String username) throws Exception;
	//新增用户
	public void saveUser(User user) throws Exception;
	//
	public User findByCode(String code)throws Exception;
	//修改用户信息
	public void activeUser(User activeUser)throws Exception;
	//用户登录
	public User loginFindByUnameAndPwd(String username, String password)throws Exception;
	//管理员登录
	public Adminuser adminUser_login(String username, String password) throws Exception;
	//查询所有用户
	public List<User> admin_findAll() throws Exception;
	//按条件查询用户
	public List<User> selectUserByUserName(String username)throws Exception;

}