package com.flyer.url;

import java.io.IOException;

import org.apache.commons.lang.StringUtils;

import com.flyer.util.URLUtil;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

public class ShortUrlController extends Controller{

//	@Before(UserLoginInterceptor.class)
	public void index() throws IOException {
		String requestURL=getRequest().getRequestURI();
		if(requestURL.startsWith("/url/")&&requestURL.length()>5){
			String shortURL=requestURL.substring(5);
			String longURL=(new ShortUrl(shortURL,null)).getLongUrl();
			getResponse().sendRedirect(longURL);
			return;
		}
		else{
			render("urlConvert.html");			
		}
	}
	
	
	@Before(UrlValidator.class)
	public void getShortUrl(){
		ShortUrl source=getModel(ShortUrl.class);
		if(!StringUtils.isEmpty(source.getShortUrl())){
			getLongUrl(source);
		}
		else{
			setAttr("shortUrl", source.getShortUrlList().get(5));
			render("urlConvert.html");
		}				
	}
	
	public void getLongUrl(ShortUrl source){
//		if(!StringUtils.isEmpty(source.getShortUrl())){
//			
//		}
		
		if(isBaiDuURL(source.getShortUrl())){
			source.setLongUrl(URLUtil.getBaiDuLongURL(source.getShortUrl()));
		}
		else if(isSinaURL(source.getShortUrl())){
			source.setLongUrl(URLUtil.getSinaLongURL(source.getShortUrl()));
		}
		else{
			
		}
		setAttr("shortUrl", source);
		render("urlConvert.html");
	}
	
	
	/*
	 * input 	shortUrl.longUrl
	 * output	List of ShortUrl
	 */
	public void getShortUrlList(){
		ShortUrl source=getModel(ShortUrl.class);
		renderJson(source.getShortUrlList());
	}
	

	
	
	
	
	
	private boolean isBaiDuURL(String tinyUrl){
		if(tinyUrl.contains("dwz.cn")){
			return true;
		}
		return false;
	}
	private boolean isSinaURL(String tinyUrl){
		if(tinyUrl.contains("t.cn")){
			return true;
		}
		return false;
	}
}
