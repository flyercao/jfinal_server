package com.news.newsItem;

import java.util.Date;

import com.jfinal.core.Controller;

public class NewsItemController extends Controller {
	public void index() {
		render("publishNews.html");
	}
	
	public void getRecentNews(){
		NewsItem newsItem=getModel(NewsItem.class);
		int newsCategoryId=newsItem.getInt("newsCategoryId");
		Long time=new Long(newsItem.getStr("publishTime"));
		renderJson(NewsItem.dao.paginate(newsCategoryId,time,1, 10));
		}
	
	public void publishNews(){
		NewsItem newsItem=getModel(NewsItem.class);
		newsItem.put("publishTime", new Date().getTime());
		newsItem.put("id",null);
		newsItem.put("readStatus", false);
		newsItem.put("collectStatus", false);
		newsItem.put("likeStatus", false);
		newsItem.put("interestedStatus", false);
		newsItem.save();
		setAttr("newsItem", newsItem);
	}
}
