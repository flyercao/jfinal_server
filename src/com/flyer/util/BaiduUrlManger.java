package com.flyer.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSON;

public class BaiduUrlManger {
	private final static String BAIDUAPIURL="http://www.dwz.cn/create.php";
	
	private String sentPost(String longUrl){
		String shortUrl=null;
        CloseableHttpClient httpClient = HttpClients.createDefault();  		  
        HttpPost httpPost = new HttpPost(BAIDUAPIURL);          
        List<NameValuePair> formParams = new ArrayList<NameValuePair>();  
        formParams.add(new BasicNameValuePair("url", longUrl));  
        UrlEncodedFormEntity urlEncodedFormEntity;    
        try {  
            urlEncodedFormEntity = new UrlEncodedFormEntity(formParams, "UTF-8");  
            httpPost.setEntity(urlEncodedFormEntity);   
            HttpResponse httpResponse = null;  
            httpResponse = httpClient.execute(httpPost);  
            HttpEntity httpEntity = httpResponse.getEntity();  
            if (httpEntity != null) {  
                String content = EntityUtils.toString(httpEntity, "UTF-8");  
                shortUrl=JSON.parseObject(content,BaiDuJson.class).getTinyurl();
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
        return shortUrl;
	}

	public static void main(String[] args){
		new BaiduUrlManger().sentPost("http://www.oschina.net/code/snippet_12_3495");
	}
	
}
