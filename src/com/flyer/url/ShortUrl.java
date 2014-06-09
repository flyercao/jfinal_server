package com.flyer.url;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.flyer.shortUrl.ShortUrlCode;
import com.flyer.util.URLUtil;
import com.jfinal.plugin.activerecord.Model;

public class ShortUrl  extends Model<ShortUrl>{
	public static final ShortUrl dao=new ShortUrl();
	
	public ShortUrl(){
		
	}
	public ShortUrl(String shortUrl,String longUrl){
		set("shorturl", shortUrl);
		set("longurl", longUrl);
		if(!StringUtils.isEmpty(shortUrl)&&StringUtils.isEmpty(longUrl)){
			set("longurl",this.dao.findById(shortUrl).getLongUrl());
		}
	}
	
	public String getLongUrl(){
		return get("longurl");
	}
	public String getShortUrl(){
		return get("shorturl");
	}
	public void setLongUrl(String longurl){
		set("longurl",longurl);
	}
	public void setShortUrl(String shorturl){
		set("shorturl",shorturl);
	}
	
	
	
	public List<ShortUrl> getShortUrlList(){
		List<ShortUrl> result=new ArrayList<ShortUrl>();
		boolean longUrlExists=longUrlExists();
		for(String shortUrl:ShortUrlCode.Encode(getLongUrl())){
			ShortUrl u=new ShortUrl(shortUrl,getLongUrl());
			if(!longUrlExists){
				u.save();
			}
			result.add(u);
		}
		result.add(new ShortUrl(URLUtil.getBaiDuShortURL(getLongUrl()), getLongUrl()));
		result.add(new ShortUrl(URLUtil.getSinaShortURL(getLongUrl()), getLongUrl()));
		return result;
	}
	
	public boolean longUrlExists(){
		ShortUrl s=this.dao.findFirst("select  * from shorturl where longurl=? limit 1", getLongUrl());
		if(s==null)
			return false;
		return true;
	}
}
