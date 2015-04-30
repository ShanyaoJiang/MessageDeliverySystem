package wjteam.actions;

import wjteam.dao.CountDao;

import com.opensymphony.xwork2.ActionSupport;

public class ForCounts extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String json;

	public String getJson() {
		return json;
	}

	public void setJson(String json) {
		this.json = json;
	}
    public String execute() throws Exception {
    	CountDao dao = new CountDao();
    	this.json = dao.getCount();
    	System.out.println(json);
		return "Success";
    }
}
