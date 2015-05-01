package wjteam.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogOut extends ActionSupport implements SessionAware {
	private Map session;
	
	public void setSession(Map session) {
		this.session=session;
		
	}
	public String execute(){
		session.clear();
		return "Success";
		
	}	

}
