package com.gxf.util;

import java.io.UnsupportedEncodingException;

/**
 * ������
 * @author Administrator
 *
 */
public class Util {
	
	/**
	 * ���ַ���ת����utf-8��ʽ��
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
     * ��ȡ��ǰ����Ŀ¼
     * @return
     */
    public String getCurrentProjectPath(){
    	String curPath = System.getProperty("user.dir");
    	
    	return curPath;
    }
}
