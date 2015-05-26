package com.gxf.util;

import java.io.UnsupportedEncodingException;

/**
 * 工具类
 * @author Administrator
 *
 */
public class Util {
	
	/**
	 * 将字符串转换成utf-8格式的
	 * @param string
	 * @return
	 */
	public String getUTF8String(String string){
		String result = "";
		try {
			result =  new String(string.getBytes("ISO8859_1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	/**
     * 获取当前工程目录
     * @return
     */
    public String getCurrentProjectPath(){
    	String curPath = System.getProperty("user.dir");
    	
    	return curPath;
    }
}
