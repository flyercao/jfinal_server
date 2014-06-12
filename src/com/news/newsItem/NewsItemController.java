package com.news.newsItem;

import com.jfinal.core.Controller;

public class NewsItemController extends Controller {
	public void index() {
		getRecentNews();
	}
	
	public void getRecentNews(){
		renderJson(NewsItem.dao.paginate(getParaToInt(0, 1), 10));
		}
}
