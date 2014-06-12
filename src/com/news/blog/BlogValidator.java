package com.news.blog;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;
import com.news.login.UserLoginInterceptor;
import com.news.login.UserLoginValidator;

/**
 * BlogValidator.
 */
public class BlogValidator extends Validator {
	
	@Before(UserLoginInterceptor.class)
	protected void validate(Controller controller) {
		validateRequiredString("blog.title", "nameMsg", "请输入您的大名!");
		validateRequiredString("blog.content", "passwordMsg", "请输入口令!");
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(Blog.class);
		
		String actionKey = getActionKey();
		if (actionKey.equals("/blog/save"))
			controller.render("add.html");
		else if (actionKey.equals("/blog/update"))
			controller.render("edit.html");
	}
}
