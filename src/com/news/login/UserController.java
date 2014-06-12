package com.news.login;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

//@Before(DemoInterceptor.class)
public class UserController extends Controller {
	public void index() {
		render("login.html");
	}

//@ActionKey("/hello")
//public void sayByeBye(){
//	renderText("Bys-Bye!  from sayByeBye();");
//}
	public void login(){
		
	}
	@Before(UserRegValidator.class)
public void register(){
		User user=getModel(User.class);
		user=user.register();
		user.set("userid",null);
		user.set("password", null);
		setAttr("user", user);
		render("login.html");
}
//	@Before(UserLoginInterceptor.class)
	@Before(UserLoginValidator.class)
public void loginto() throws IOException{
		User user=getModel(User.class);
		String userName=user.get("name");
		user=user.login();
		if(user==null){
			user.set("name", userName);
			setAttr("user",user);
			render(getRequest().getHeader("Referer"));
			}
		else{
			HttpSession s= getRequest().getSession();
			s.setAttribute("user", user);
			getResponse().sendRedirect("/blog");
		}
	}
	
	
} 