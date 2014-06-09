package com.demo.news;

import com.demo.login.User;
import com.jfinal.plugin.activerecord.Model;

/**
 * Blog model.
 */
@SuppressWarnings("serial")
public class News extends Model<News> {
	public static final News dao = new News();
	
}