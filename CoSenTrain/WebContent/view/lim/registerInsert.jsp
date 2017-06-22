 
<%@page import="dao.lim.MemberDao"%>
<%@page import="bean.lim.Members"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%
 request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="b" class="bean.lim.Members"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>    
</head>
<body>
  <%
    Members member = new Members();
     
    member.setUserno(MemberDao.getNumber());
    member.setName(b.getName()); 
    member.setPwweb(b.getPwweb());
    member.setPwticketing(b.getPwticketing());
    member.setBirth(b.getBirth());
    String gender="";
    if(b.getGender().equals("남")){
    	gender="M";
    }else if(b.getGender().equals("여")){
    	gender="W";
    }
    member.setGender(gender);
    member.setEmail(b.getEmail());
    member.setEmailreceivable(b.getEmailreceivable());
    member.setTel(b.getTel());
    member.setPhone(request.getParameter("addr2"));
    member.setUsertype("user");
    member.setAddr(b.getAddr());
    member.setZipcodeno(Integer.parseInt(request.getParameter("addr3")));
    member.setIsDeleted("N");
    System.out.println(member);
    
    //MemberDao.insertMember(member);
    
  %>


</body>
</html>