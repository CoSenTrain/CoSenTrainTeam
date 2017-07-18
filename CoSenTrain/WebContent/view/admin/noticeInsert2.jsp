<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileUpload"%>
<%@page import="dao.lim.NoticeDao"%>
<%@page import="bean.lim.Notice"%>
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
<jsp:useBean id="b" class="bean.lim.Notice"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>
</head>
<body>
  <%
  
  
  Notice nt = new Notice();
  
  int no= NoticeDao.getInstance().getNoticeNumber(); 
  nt.setTitle(b.getTitle());
  nt.setUserno(b.getUserno());
  nt.setContents(b.getContents());
  nt.setType("notice");
  
  
	String pathUpload = "C:\\Users\\user\\git\\CoSenTrainTeamNew\\CoSenTrain\\WebContent\\img\\lim\\notice\\upload\\";
 
	
	if (FileUpload.isMultipartContent(request)) {
		 

		DiskFileUpload fileUpload = new DiskFileUpload();
		fileUpload.setSizeMax(1048576 * 5);
		String fileName = "";
		List<FileItem> list = fileUpload.parseRequest(request);
		for (FileItem file : list) {
			String name = file.getFieldName();
		  

			if (file.getName() != null && file.getName().length() > 0) {

				if (!file.isFormField()) {
					
						fileName = file.getName();
					File ff = new File(pathUpload + file.getName());
					file.write(ff);
				}
			}
		 
		} //for
		 nt.setImgfile(fileName);
	 
	} //if
    
  System.out.println(nt);
  NoticeDao.getInstance().insertNotice(nt);
  
  
  
  response.sendRedirect("/web/view/admin/noticeManagement.jsp");
  
  %>



</body>
</html>