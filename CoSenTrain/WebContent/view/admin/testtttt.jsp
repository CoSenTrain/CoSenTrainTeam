<%@page import="dao.lee.GraphDao"%>
<%@page import="bean.lee.TimeGraphBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	/* {"year": 1930, "italy": 1, "germany": 5, "uk": 3 }, */
	GraphDao graphDao = GraphDao.getInstance();
	List<TimeGraphBean> list = graphDao.selectGraphStartTime();
	for (int i = 0; i < list.size(); i++) {

		StringBuffer graphData = new StringBuffer();
		graphData.append("[");
		
		graphData.append("{");
		
		graphData.append("\"출발시간\"");
		graphData.append(":");
		graphData.append(list.get(i).getDepartureTime());
		
		graphData.append(",");
		
		graphData.append("\"백분률\"");
		graphData.append(":");
		graphData.append(list.get(i).getPersent());
		
		graphData.append("}");
		
		graphData.append("]");
		
		out.print(graphData);
	}
%>


