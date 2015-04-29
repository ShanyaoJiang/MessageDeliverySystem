package wjteam.interceptors;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptors extends AbstractInterceptor {
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Map session = arg0.getInvocationContext().getSession();
		System.out.println(session == null);
		if(session != null && session.containsKey("userEmail") && session.get("userEmail") != null) {
			System.out.println(session.get("userEmail"));
			return arg0.invoke();
		}
		arg0.getInvocationContext().put("Tip", "You need to sign in before send a message!");
		return Action.LOGIN;
	}

}
