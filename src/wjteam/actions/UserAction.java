package wjteam.actions;

import com.opensymphony.xwork2.ActionSupport;

import wjteam.dao.UserDao;
import wjteam.orm.*;

public class UserAction extends ActionSupport{
    private User user = new User();

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
	
}
