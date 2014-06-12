package com.news.login;

import javax.servlet.http.HttpSession;

import com.jfinal.aop.Before;
import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;

public class UserLoginInterceptor implements Interceptor {
	@SuppressWarnings("deprecation")
//	@Before(UserLoginValidator.class)
	public void intercept(ActionInvocation ai) {
		System.out.println("Before action invoking");
		HttpSession s = ai.getController().getRequest().getSession();
//		String loginName=ai.getController().getPara("name");
		Object currentUser=s.getAttribute("user");
		if(currentUser!=null){
//			ai.getController().renderText(s.getAttribute("name")+" login success!");
			ai.invoke();
		}
		else{
			ai.getController().render("/user/login.html");
//			ai.invoke();
//			s.putValue("name", ai.getController().getPara("name"));
		}
		System.out.println("After action invoking");
	}
}