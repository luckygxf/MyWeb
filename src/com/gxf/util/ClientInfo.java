package com.gxf.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * ͨ��httpЭ��ͷ��ȡ�ͻ�����Ϣ
 * ���������Ϣ������ϵͳ��Ϣ��
 * @author Administrator
 *
 */
public class ClientInfo {
	private String browserName;
	private String osName;
	private String info;
	private String explorerVer;
	private String OSVer;
	
	public String getBrowserName() {
		return browserName;
	}
	public void setBrowserName(String browserName) {
		this.browserName = browserName;
	}
	public String getOsName() {
		return osName;
	}
	public void setOsName(String osName) {
		this.osName = osName;
	}
	public ClientInfo(String info){
		this.info = info;
	}
	
	/*  
     * ��ȡ�������������  
     */   
    public String getExplorerName(){   
        String str = "δ֪";   
        Pattern pattern = Pattern.compile("");   
        Matcher matcher;   
        if(info.indexOf("MSIE") != -1){   
            str = "MSIE"; //΢��IE   
             pattern = Pattern.compile(str + "\\s([0-9.]+)");   
        }else if(info.indexOf("Firefox") != -1){   
            str = "Firefox"; //���   
             pattern = Pattern.compile(str + "\\/([0-9.]+)");   
        }else if(info.indexOf("Chrome") != -1){   
            str = "Chrome"; //Google   
            pattern = Pattern.compile(str + "\\/([0-9.]+)");   
        }else if(info.indexOf("Opera") != -1){   
            str = "Opera"; //Opera   
            pattern = Pattern.compile("Version\\/([0-9.]+)");   
        }   
        matcher = pattern.matcher(info);   
        if(matcher.find()) explorerVer = matcher.group(1);   
        return str;   
    }   
  
    /*  
     * ��ȡ����������汾  
     */   
    public String getExplorerVer(){   
        return this.explorerVer;   
    }   
  
    /*  
     * ��ȡ�����������ƣ����磺���Ρ�����֮���ȣ�  
     */   
    public String getExplorerPlug(){   
        String str = "��";   
        if(info.indexOf("Maxthon") != -1)   
            str = "Maxthon"; //����   
        return str;    
    }   
       
    /*  
     * ��ȡ����ϵͳ����  
     */   
    public String getOSName(){   
        String str = "δ֪";   
        Pattern pattern = Pattern.compile("");   
        Matcher matcher;   
        if(info.indexOf("Windows") != -1){   
            str = "Windows"; //Windows NT 6.1   
            pattern = Pattern.compile(str + "\\s([a-zA-Z0-9]+\\s[0-9.]+)");   
        }   
        matcher = pattern.matcher(info);   
        if(matcher.find()) OSVer = matcher.group(1);   
        return str;    
    }   
       
    /*  
     * ��ȡ����ϵͳ�汾  
     */   
    public String getOSVer(){   
        return this.OSVer;   
    }   
	
}
