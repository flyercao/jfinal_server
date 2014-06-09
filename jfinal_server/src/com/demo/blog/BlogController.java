package com.demo.blog;

import com.demo.login.User;
import com.demo.login.UserLoginInterceptor;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

/**
 * BlogController
 * 所有 sql 写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(UserLoginInterceptor.class)
public class BlogController extends Controller {
	@Before(UserLoginInterceptor.class)
	public void index() {
		setAttr("blogPage", Blog.dao.paginate(getParaToInt(0, 1), 10));
		render("blog.html");
	}
	
	public void add() {
	}
	
	@Before(BlogValidator.class)
	public void save() {
		Blog blog=getModel(Blog.class);
		User user=(User)getRequest().getSession().getAttribute("user");
		blog.set("userId", user.getID()).save();
		redirect("/blog");
	}
	
	public void edit() {
		setAttr("blog", Blog.dao.findById(getParaToInt()));
	}
	
	@Before(BlogValidator.class)
	public void update() {
		getModel(Blog.class).update();
		redirect("/blog");
	}
	
	public void delete() {
		Blog.dao.deleteById(getParaToInt());
		redirect("/blog");
	}
}


