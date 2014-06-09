package com.flyer.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.crypto.dsig.keyinfo.KeyValue;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSON;

public class URLUtil {

	private final static String BAIDUCREATEURL="http://www.dwz.cn/create.php";
	private final static String BAIDUQUERYURL="http://www.dwz.cn/query.php";
	private final static String TAOBAOCREATEURL="http://www.taobao.cz/CreateShortUrl.php";
	private final static String SINAQUERYURL="http://api.weibo.com/2/short_url/expand.json";
	private final static String SINACREATEURL="http://api.weibo.com/2/short_url/shorten.json";
	private final static String TENCENTCREATEURL="http://open.t.qq.com/api/short_url/shorten";
	private final static String TENCENTQUERYURL="http://open.t.qq.com/api/short_url/expand";
	
	private static Object sentPost(String postUrl,Map<String, String> map,Class c){
		String shortUrl=null;
        CloseableHttpClient httpClient = HttpClients.createDefault();  		  
        HttpPost httpPost = new HttpPost(postUrl);          
        List<NameValuePair> formParams = new ArrayList<NameValuePair>();  
        for(Map.Entry<String, String> entry : map.entrySet()){
        	formParams.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
        } 
        UrlEncodedFormEntity urlEncodedFormEntity;    
        try {  
            urlEncodedFormEntity = new UrlEncodedFormEntity(formParams, "UTF-8");  
            httpPost.setEntity(urlEncodedFormEntity);   
            HttpResponse httpResponse = null;  
            httpResponse = httpClient.execute(httpPost);  
            HttpEntity httpEntity = httpResponse.getEntity();  
            if (httpEntity != null) {  
                String content = EntityUtils.toString(httpEntity, "UTF-8");  
                return JSON.parseObject(content,c);
            }  
        } catch (ClientProtocolException e) {  
            e.printStackTrace();  
        } catch (UnsupportedEncodingException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            //关闭连接，释放资源  
            httpClient.getConnectionManager().shutdown();  
        }  
        return null;
	}

	private static String sentGet(String getUrl,Map<String, String> map,Class c){
		CloseableHttpClient httpClient = HttpClients.createDefault();  	
		String requestUrl=getUrl+"?";  
        for(Map.Entry<String, String> entry : map.entrySet()){
        	requestUrl+=entry.getKey()+"="+entry.getValue()+"&";
        }
        HttpGet httpGet = new HttpGet(requestUrl+requestUrl);      
        try {   
            HttpResponse httpResponse = httpClient.execute(httpGet);  
            HttpEntity httpEntity = httpResponse.getEntity();  
            if (httpEntity != null) {  
                String content = EntityUtils.toString(httpEntity, "UTF-8");  
                SinaJsons o= JSON.parseObject(content,c);
                
                return o.getUrls().get(0).getUrl_short();
            }  
        } catch (ClientProtocolException e) {  
            e.printStackTrace();  
        } catch (UnsupportedEncodingException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            //关闭连接，释放资源  
            httpClient.getConnectionManager().shutdown();  
        } 
		return null;
	}
	
	
	
	public static String getTencentShortURL(String longUrl){
		Map<String,String> map=new HashMap<String, String>();
		map.put("format", "json");
		map.put("long_url", longUrl);
		map.put("appid", longUrl);
		map.put("openid", longUrl);
		map.put("openkey", longUrl);
		map.put("reqtime", longUrl);
		map.put("sig", longUrl);
		map.put("wbversion", longUrl);
		return sentGet(TENCENTCREATEURL,map,SinaJsons.class);
	}
	
	public static String getTencentLongURL(String longUrl){
		Map<String,String> map=new HashMap<String, String>();
		map.put("source", "211160679");
		map.put("url_long", longUrl);
		return sentGet(TENCENTQUERYURL,map,SinaJsons.class);
	}
	
	public static String getSinaShortURL(String longUrl){
		Map<String,String> map=new HashMap<String, String>();
		map.put("source", "211160679");
		map.put("url_long", longUrl);
		return sentGet(SINACREATEURL,map,SinaJsons.class);
	}
		
	public static String getSinaLongURL(String shortUrl){
		Map<String,String> map=new HashMap<String, String>();
		map.put("source", "211160679");
		map.put("url_short", shortUrl);
		return sentGet(SINAQUERYURL,map,SinaJsons.class);
	}
	
	public static String getBaiDuShortURL(String longUrl){
		Map<String,String> map=new HashMap<String, String>();
		map.put("url", longUrl);
		BaiDuJson o=(BaiDuJson) sentPost(BAIDUCREATEURL, map, BaiDuJson.class);
		if(o!=null&&o.getStatus()==0)
			return o.getTinyurl();		
		return null;
	}

	public static String getTaoBaoShortURL(String longUrl){
		Map<String,String> map=new HashMap<String, String>();
		map.put("url", longUrl);
		BaiDuJson o=(BaiDuJson) sentPost(TAOBAOCREATEURL,map, BaiDuJson.class);
		if(o!=null&&o.getStatus()==0)
			return o.getTinyurl();		
		return null;
	}
	
	
	public static String getBaiDuLongURL(String shortUrl){
		Map<String,String> map=new HashMap<String, String>();
		map.put("tinyurl", shortUrl);
		BaiDuJson o=(BaiDuJson) sentPost(BAIDUQUERYURL, map, BaiDuJson.class);
		if(o!=null&&o.getStatus()==0)
			return o.getLongurl();		
		return null;
	}

	
	public static void main(String[] args){
//		URLUtil.getBaiDuShortURL("http://www.oschina.net/code/snippet_12_3495");
//		URLUtil.getTaoBaoShortURL("http://www.oschina.net/code/snippet_12_3495");
//		URLUtil.getSinaShortURL("http://www.oschina.net/code/snippet_12_3495");
//		URLUtil.getBaiDuLongURL("http://dwz.cn/iISO6");
		System.out.print(URLUtil.getSinaLongURL("http://t.cn/RvhmxG5"));
	}
	


}
