<%@page import="java.io.PrintWriter"%>
<%@page import="dao.lee.GraphDao"%>
<%@page import="bean.lee.TimeGraphBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	/* {"year": 1930, "italy": 1, "germany": 5, "uk": 3 }, */
	GraphDao graphDao = GraphDao.getInstance();
	List<TimeGraphBean> list = graphDao.selectGraphStartTime();
	StringBuffer json = new StringBuffer();
	json.append("[");
	for (int i = 0; i < list.size(); i++) {

		json.append("{");

		json.append("\"country\"");
		json.append(":");
		json.append("\""+list.get(i).getDepartureTime()+"\"");

		json.append(",");

		json.append("\"visits\"");
		json.append(":");
		json.append("\""+list.get(i).getCount()+"\"");
		
		json.append(",");
		
		json.append("\"color\"");
		json.append(":");
		json.append("\"#FF0F00\"");
		
		json.append("}");
		json.append(",");

	}
	json.delete(json.lastIndexOf(","), json.lastIndexOf(",")+1);
	json.append("]");
	
	PrintWriter pw = response.getWriter();
	pw.print(new String(json));
	pw.flush();
	pw.close();
	
%>


