package action;

import com.opensymphony.xwork2.ActionSupport; 

import dao.LoginDAO;
import pojo.LoginInfo;

public class LoginAction extends ActionSupport{

	String userName;
	String password;
	
	public String execute() {
		String statusCode = "";
		System.out.println("execute() method called");
		boolean isUserValid = LoginDAO.isUserValid(new LoginInfo(userName, password));
		if (isUserValid) {
			statusCode = "success";
		} else {
			statusCode = "input";
		}
		return statusCode;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
