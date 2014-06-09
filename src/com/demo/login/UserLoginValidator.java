package com.demo.login;

import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * BlogValidator.
 */
public class UserLoginValidator extends Validator {
	
	protected void validate(Controller controller) {
		validateRequiredString("user.name", "nameMsg", "请输入Blog标题!");
		validateRequiredString("user.password", "passwordMsg", "请输入Blog内容!");
		User user=controller.getModel(User.class);
		if(!user.nameExist()){
			addError("loginResult", "名称不存在");
		}
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(User.class);

		controller.render("login.html");
//		String actionKey = getActionKey();
//		if (actionKey.equals("/user/login"))
//			controller.render("add.html");
//		else if (actionKey.equals("/blog/update"))
//			controller.render("edit.html");
	}
}
