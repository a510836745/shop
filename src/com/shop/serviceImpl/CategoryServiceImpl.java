package com.shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.mapper.CategoryMapper;
import com.shop.po.Category;
import com.shop.po.CategoryExample;
import com.shop.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryMapper categoryMapper;
	
	@Override//查询一级目录
	public List<Category> findCategory() throws Exception {
		List<Category> list = categoryMapper.findCategoryAndSecondcategory();
		if(list!=null && list.size()>0){
			return list;
		}
		return null;
	}
	@Override
	public void addCategory(Category addCategory) throws Exception {
		categoryMapper.insert(addCategory);
	}
	
	@Override
	public List<Category> adminbFindCategory() {
		CategoryExample example = new CategoryExample();
		
		List<Category> list = categoryMapper.selectByExample(example);
		if(list!=null && list.size()>0){
			return list;
		}
		return null;
	}
	@Override
	public Category findCategory(int cid) throws Exception {
		return categoryMapper.selectByPrimaryKey(cid);
	}
	@Override
	public void adminCategory_update(Category category) {
		categoryMapper.updateByPrimaryKey(category);
	}
	@Override
	public void deleteCategoryByCid(int cid) throws Exception {
		categoryMapper.deleteByPrimaryKey(cid);
	}
}
