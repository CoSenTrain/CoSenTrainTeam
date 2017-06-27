<%@page import="dao.kwon.UsersDao"%>
<%@page import="bean.kwon.Users"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="util.kwon.Obj"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!UsersDao userDao = UsersDao.getInstance();%>
<%
request.setCharacterEncoding("EUC-KR");
String path = new String();
boolean redirect = true;

String signInWith = request.getParameter("signInWith");
signInWith = (Obj.isStrNull(signInWith) ? "" : signInWith);

String logId = request.getParameter("logId");
logId = (Obj.isStrNull(logId) ? "" : logId);

if(signInWith.trim().equalsIgnoreCase("userNo")) {
	signInWith = "TO_CHAR(userNo)";
} else if(signInWith.trim().equalsIgnoreCase("phone")) {
	signInWith = "replace(phone, '-', '')";
	logId = logId.replaceAll("-", "");
}

String logPw = request.getParameter("logPw");
logPw = (Obj.isStrNull(logPw) ? "" : logPw);


out.println("signInWith = " + signInWith + "<br />");
out.println("logId = " + logId + "<br />");
out.println("logPw = " + logPw + "<br />");
out.println("<hr />");


if(Obj.isStrNull(logId) && Obj.isStrNull(logPw)) {
	session.invalidate();
	path = "/web/view/container/container.jsp";
} else {
	Map<String, Object> map = new HashMap<String, Object>();
	
	map.put("signInWith", signInWith);
	map.put("logId", logId);
	map.put("logPw", logPw);
	map.put("isDeleted", "N");
	
	Users user = userDao.signUserIn(map);
	out.println("user = " + user + "<br />");
	
	if(user == null) {
		path = "/web/view/kwon/login/login.jsp";
	} else {
		session.setAttribute("user", user);
		session.setMaxInactiveInterval(60*60*60);
		path = "/web/view/container/container.jsp";
	}
}

if(redirect) {
	response.sendRedirect(path);
} else {
	request.getRequestDispatcher(path).forward(request, response);
}

%>

