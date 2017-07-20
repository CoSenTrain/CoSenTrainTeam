<%@page import="dao.kwon.StationDao"%>
<%@page import="java.util.List"%>
<%@page import="util.kwon.Obj"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!StationDao stationDao = StationDao.getInstance();%>
<%
request.setCharacterEncoding("EUC-KR");
%>
<%=stationDao.selectStations()%>