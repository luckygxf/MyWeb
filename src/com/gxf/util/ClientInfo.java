package com.gxf.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 通过http协议头获取客户端信息
 * 如浏览器信息，操作系统信息等
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
     * 获取核心浏览器名称  
     */   
    public String getExplorerName(){   
        String str = "未知";   
        Pattern pattern = Pattern.compile("");   
        Matcher matcher;   
        if(info.indexOf("MSIE") != -1){   
            str = "MSIE"; //微软IE   
             pattern = Pattern.compile(str + "\\s([0-9.]+)");   
        }else if(info.indexOf("Firefox") != -1){   
            str = "Firefox"; //火狐   
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
     * 获取核心浏览器版本  
     */   
    public String getExplorerVer(){   
        return this.explorerVer;   
    }   
  
    /*  
     * 获取浏览器插件名称（例如：遨游、世界之窗等）  
     */   
    public String getExplorerPlug(){   
        String str = "无";   
        if(info.indexOf("Maxthon") != -1)   
            str = "Maxthon"; //遨游   
        return str;    
    }   
       
    /*  
     * 获取操作系统名称  
     */   
    public String getOSName(){   
        String str = "未知";   
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
     * 获取操作系统版本  
     */   
    public String getOSVer(){   
        return this.OSVer;   
    }   
	
}
