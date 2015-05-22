package com.gxf.action;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport {
    private String username;
    private String password;
    @Override
    public String execute() throws Exception {
        if(username.equals("luckygxf") && password.equals("luckygxf")){
            return SUCCESS;
        }
        else{
            return INPUT;
        }
    }
    
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
    
}