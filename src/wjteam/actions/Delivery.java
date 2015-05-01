package wjteam.actions;

import com.opensymphony.xwork2.ActionSupport;

import wjteam.dao.MessageDao;
import wjteam.orm.Message;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.UUID;        

import org.apache.struts2.interceptor.SessionAware;

public class Delivery extends ActionSupport implements SessionAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Message msg = new Message();
	private Map session;
	public String execute() throws Exception {
		msg.setMessageId(UUID.randomUUID().toString());
		MessageDao dao = new MessageDao();
		msg.setAuthor(session.get("userEmail").toString());
		msg.setAuthorId(session.get("userId").toString());
	    Date dt = new Date();
		SimpleDateFormat sdf = 
		     new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentTime = sdf.format(dt);
		msg.setDate(currentTime);
		System.out.println(msg.getAuthorId());
		if(dao.addMessage(msg)) {
			return "Success";
		}
		else {
			return "Failure";
		}
	}

	public Message getMsg() {
		return msg;
	}

	public void setMsg(Message msg) {
		this.msg = msg;
	}

	@Override
	public void setSession(Map session) {
		this.session = session;		
	}
}
