package com.news.newsItem;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;
import com.news.login.User;

public class NewsItem extends Model<NewsItem>  {

	public static final NewsItem dao = new NewsItem();
	public String getID(){
		return get("id");
	}
	
	/**
	 * 所有 sql 写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
	 */
	public Page<NewsItem> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from newsItem order by id asc");
	}
	public Page<NewsItem> paginate(int newsCategoryId,long time ,int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from newsItem where  newsCategoryId = "+newsCategoryId+
				"  and publishTime >= "+time+" order by id asc");
	}
	
}
