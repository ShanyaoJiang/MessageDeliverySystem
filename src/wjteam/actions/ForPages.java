package wjteam.actions;

import wjteam.dao.MessageDao;

import com.opensymphony.xwork2.ActionSupport;

public class ForPages extends ActionSupport{
	private String json;
	private String curr;
	public String getJson() {
		return json;
	}

	public void setJson(String json) {
		this.json = json;
	}
	public String pushPages() throws Exception {
		MessageDao dao = new MessageDao();
		
		this.json = dao.getTitles(Integer.valueOf(curr));
		System.out.println(json);
		return "Success";
	}

	public String getCurr() {
		return curr;
	}

	public void setCurr(String curr) {
		this.curr = curr;
	}
}
