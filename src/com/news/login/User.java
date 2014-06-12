package com.news.login;

import org.apache.commons.lang.StringUtils;

import com.flyer.code58.UuidUtils;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

@SuppressWarnings("serial")
public class User extends Model<User> {
	public static final User dao = new User();
	public String getID(){
		return get("id");
	}
	
	/**
	 * 所有 sql 写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
	 */
	public Page<User> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from user order by id asc");
	}
	
	public User register(){		
		if(getID()==null){
			set(getID(), UuidUtils.base58Uuid());
		}
		save();
		return this;
	}
	
	public User login(){
		User u=User.dao.findFirst("select * from user where name=? and password=?  ",
				get("name"),get("password"));
		return u;
	}
	public Boolean exist(){
		if(StringUtils.isEmpty(getID())){
			return false;
		}
		User u=User.dao.findFirst("select 1 from user where userid=? ",getID());
		if(u!=null){
			return true;
		}
		return false;
	}
	public Boolean nameExist(){
		if(StringUtils.isEmpty((String)get("name"))){
			return false;
		}
		User u=User.dao.findFirst("select 1 from user where name=? ",get("name"));
		if(u!=null){
			return true;
		}
		return false;
	}
}
