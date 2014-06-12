package com.news.login;

import javax.servlet.http.HttpSession;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;

public class UserInterceptor implements Interceptor {
	@SuppressWarnings("deprecation")
	public void intercept(ActionInvocation ai) {
		System.out.println("Before action invoking");
		HttpSession s = ai.getController().getRequest().getSession();
		String loginName=ai.getController().getPara("name");
		Object currentName=s.getAttribute(loginName);
		if(currentName!=null){
			ai.getController().renderText(s.getAttribute("name")+" login success!");
		}
		else{
			ai.invoke();
			s.putValue(ai.getController().getPara("name"), ai.getController().getPara("name"));
		}
		System.out.println("After action invoking");
	}
}