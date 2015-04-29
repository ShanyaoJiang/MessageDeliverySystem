package wjteam.actions;

import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.json.annotations.JSON;

import wjteam.dao.UserDao;
import wjteam.orm.User;

import com.opensymphony.xwork2.ActionSupport;

public class User4AJAX extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	private User user = new User();
	private Map session;
    private String resultSS;
	
	public User getUser() {
		return user;
	} 
	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public void setSession(Map session) {
		this.session = session;
	}

	public String execute() throws Exception {
		HashMap<String, Object> m = new HashMap<String, Object>();
		if (session.containsKey("userEmail")
				&& session.get("userEmail") != null) {
			UserDao dao = new UserDao();
			this.user = dao.getUser(String.valueOf(session.get("userEmail")));
			if (user.getEmail() != null) {

				m.put("status", "in");
				m.put("userId", user.getUserId());
				m.put("messageCount", String.valueOf(user.getMessageCount()));

				JSONObject json = JSONObject.fromObject(m);

				setResultSS(json.toString());
				System.out.println(json.toString());
				return "Success";
			}
			else {
				m.put("status", "out");
				JSONObject json = JSONObject.fromObject(m);
				setResultSS(json.toString());
				return "Failure";
			}
		}
		else {
			m.put("status", "out");
			JSONObject json = JSONObject.fromObject(m);
			setResultSS(json.toString());
			return "Failure";
		}
	}
	public String getResultSS() {
		return resultSS;
	}
	public void setResultSS(String result) {
		this.resultSS = result;
	}
}
