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
<script type="text/javascript">
  function golist() {
	document.location.href='/web/view/cho/yusilEdit.jsp';
}
</script>
</head>
   <%
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
      <td>包府锅龋</td><td><%=n.getNo() %></td>
     </tr>
     <tr>
      <td>拱前疙</td><td><%=n.getTitle()%></td>
     </tr>
     <tr>
      <td>前格</td><td><%=n.getLostcategory()%></td>
     </tr>
     <tr>
      <td>焊包厘家</td><td><%=n.getLoststore()%></td>
     </tr>
     <tr>
      <td>立荐老磊</td><td><%=n.getRegdate()%></td>
     </tr>
     <tr>
      <td></td>
     </tr>
     <%
	}
	%>
     
    </table>
    
    <br>
    <input type="button" value="格废栏肺" onclick="golist()">
    
    
    
    

</body>
</html>