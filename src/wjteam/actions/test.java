package wjteam.actions;

import java.util.HashMap;

import org.apache.struts2.json.JSONException;

import net.sf.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;

public class test extends ActionSupport{
	private String hehe;
	public String execute() throws Exception {
		HashMap<String, String> h = new HashMap<String, String>();
		h.put("FuckU", "Json");
		System.out.println("Fuck U");
		String tmp = h.toString();
		System.out.println(tmp);
        JSONObject json_obj = new JSONObject();
		
		System.out.println("Fuck U");
		return "Success";
	}
	public String getHehe() {
		return hehe;
	}
}
