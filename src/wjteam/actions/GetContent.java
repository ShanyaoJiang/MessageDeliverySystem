package wjteam.actions;

import wjteam.dao.MessageDao;
import wjteam.orm.Message;

import com.opensymphony.xwork2.ActionSupport;

public class GetContent extends ActionSupport{
	private String messageid;
	private Message msg;
	public String getMessageid() {
		return messageid;
	}
	public void setMessageid(String messageid) {
		this.messageid = messageid;
	}
	public Message getMsg() {
		return msg;
	}
	public void setMsg(Message msg) {
		this.msg = msg;
	}
	public String execute() throws Exception{
		if(messageid!=null){
			MessageDao md = new MessageDao();
			msg =md.getMessage(messageid);
			System.out.println(msg.getAuthorId());

			return "Success";
		}
		
		return "False";
	}
	
}
