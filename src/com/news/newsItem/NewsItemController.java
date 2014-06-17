package com.news.newsItem;

import com.jfinal.core.Controller;

public class NewsItemController extends Controller {
	public void index() {
		getRecentNews();
	}
	
	public void getRecentNews(){
		NewsItem newsItem=getModel(NewsItem.class);
		int newsCategoryId=newsItem.getInt("newsCategoryId");
		Long time=new Long(newsItem.getStr("publishTime"));
		renderJson(NewsItem.dao.paginate(newsCategoryId,time,1, 10));
		}
}
