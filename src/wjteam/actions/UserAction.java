package wjteam.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import wjteam.dao.UserDao;
import wjteam.orm.*;

public class UserAction extends ActionSupport implements SessionAware {
    private User user = new User();
	private Map session;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String login() {
		UserDao dao = new UserDao();
		User tmpUser = dao.getUser(user.getEmail());
		if(tmpUser.getPassword()!= null && tmpUser.getPassword().equals(user.getPassword())) {
			session.put("userEmail", user.getEmail());
			return "Success";
		}
		else {
			return "Failure";
		}
	}
	public String register() {
		UserDao dao = new UserDao();
		if (dao.addUser(user)) {
			return "Success";
		}
		else {
			return "Failure";
		}
	}

	@Override
	public void setSession(Map session) {
		this.session = session;
	}
	
}
