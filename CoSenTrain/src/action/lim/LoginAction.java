package action.lim;

import javax.servlet.http.HttpServletRequest;

import control.lim.ActionForWard;

public class LoginAction  implements Action{
	private String path;
	private boolean redirect;
	
	public LoginAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		System.out.println("LOGINACTION");
		path=request.getParameter("flag").equals("s")?"mvcView/loginSuccess.jsp":"mvcView/loginFail.jsp";
		
		return new ActionForWard(path,redirect);
	}
	
	

}
