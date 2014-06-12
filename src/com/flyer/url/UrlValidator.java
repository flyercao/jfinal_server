package com.flyer.url;

import org.apache.commons.lang.StringUtils;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;
import com.news.login.UserLoginInterceptor;
import com.news.login.UserLoginValidator;

/**
 * BlogValidator.
 */
public class UrlValidator extends Validator {
	
	protected void validate(Controller controller) {
		ShortUrl source=controller.getModel(ShortUrl.class);
		if(StringUtils.isEmpty(source.getShortUrl())&&StringUtils.isEmpty(source.getLongUrl())){
			validateRequiredString("shortUrl.shorturl", "nameMsg", "q请输入短地址或长地址");
		}
//		validateRequiredString("shortUrl.shorturl", "nameMsg", "请输入您的大名!");
//		validateRequiredString("shortUrl.longurl", "passwordMsg", "请输入口令!");
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(ShortUrl.class);
		controller.render("urlConvert.html");		
	}
}
