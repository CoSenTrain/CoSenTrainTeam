<%@page import="bean.kwon.Users"%>
<%@page import="dao.cho.YusilDao"%>
<%@page import="bean.cho.YusilBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
   <%
     // String no = request.getParameter("no");
   		int no = Integer.parseInt(request.getParameter("no"));
    %>
 
<body>
	
	
		<%
			request.setCharacterEncoding("EUC-KR");
			List<YusilBean> list = null;
			
		 	try {
				list = YusilDao.getInstance().selectYusilInfo(no);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		%>	
    
    
    <table >
    <%
		for (YusilBean n : list) {
										%>
     <tr>
      <td>������ȣ</td><td><%=n.getNo() %></td>
     </tr>
     <tr>
      <td>��ǰ��</td><td><%=n.getTitle()%></td>
     </tr>
     <tr>
      <td>ǰ��</td><td><%=n.getCategory()%></td>
     </tr>
     <tr>
      <td>�������</td><td><%=n.getStore()%></td>
     </tr>
     <tr>
      <td>��������</td><td><%=n.getRegdate()%></td>
     </tr>
     <tr>
      <td></td>
     </tr>
     <%
	}
	%>
     
    </table>
    
    
    
    
   <%--  <%
			if(session.getAttribute("user")==null) {
			%>
			<a href="/web/view/kwon/login/login.jsp">�α���</a> | <a href="/web/view/lim/register1.jsp">ȸ������</a>
			<%
			} else {
				Users u = (Users) session.getAttribute("user");
			%>
			<label style="color:gold"><b> <%=u.getName()%>�� </b></label> | <a href="/web/view/kwon/login/loginProcess.jsp">�α׾ƿ�</a>
			<%
			}
			%> --%>
</body>
</html>