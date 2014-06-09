package com.demo.news;

import java.util.List;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

/**
 * BlogController
 * 注意：在实际项目中业务与sql需要写在Model中，此demo仅为示意,故将sql写在了Controller中
 */
public class NewsController extends Controller {
	
	public void index() {
		List<News> newsList=News.dao.find("select * from news order by id asc");
		renderJson(newsList);
	}
	
	public void getRecentNews(){
		List<News> newsList=News.dao.find("select  * from news  order by id desc  limit 0,9");
		renderJson(newsList);
	}

}


