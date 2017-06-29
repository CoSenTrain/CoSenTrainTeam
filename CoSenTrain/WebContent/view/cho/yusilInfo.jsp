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
      <td>관리번호</td><td><%=n.getNo() %></td>
     </tr>
     <tr>
      <td>물품명</td><td><%=n.getTitle()%></td>
     </tr>
     <tr>
      <td>품목</td><td><%=n.getLostcategory()%></td>
     </tr>
     <tr>
      <td>보관장소</td><td><%=n.getLoststore()%></td>
     </tr>
     <tr>
      <td>접수일자</td><td><%=n.getRegdate()%></td>
     </tr>
     <tr>
      <td></td>
     </tr>
     <%
	}
	%>
     
    </table>
    
    <br>
    <input type="button" value="목록으로" onclick="golist()">
    
    
    
    

</body>
</html>