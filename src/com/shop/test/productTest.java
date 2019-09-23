//package com.shop.test;
//
//
//import java.util.List;
//
//
//
//import com.shop.mapper.CategoryMapper;
//
//import com.shop.po.Category;
//import com.shop.po.CategoryExample;
//import com.shop.po.User;
//import com.shop.service.UserService;
//import org.junit.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//
//
//public class productTest {
//	@Autowired
//	UserService userService;
//
//	@Test
//	public void testselectByExample() throws Exception {
//		CategoryMapper categoryMapper = applicationContext.getBean(CategoryMapper.class);
//		Category category = new Category();
//		category.setCname("123");
//		categoryMapper.insert(category);
//		CategoryExample example = new CategoryExample();
//		List<Category> list = categoryMapper.selectByExample(example);
//		for (Category categoryList : list) {
//			System.out.println(categoryList.getCname());
//		}
//	}
//	@Test
//	public void testCategoryService() throws Exception {
//		CategoryMapper categoryMapper = applicationContext.getBean(CategoryMapper.class);
//	}
//
//	@Test
//	public void test1()throws Exception{
//		String username = "hhh";
//		List<User> list = userService.selectUserByUserName(username);
//		System.out.println(list);
//	}
//}
