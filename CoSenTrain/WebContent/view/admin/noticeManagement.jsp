<%@page import="bean.lim.Notice"%>
<%@page import="dao.lim.NoticeDao"%>
<%@page import="bean.kwon.Users"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>notice</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>

<script>
	function sendCheck() {
		var obj = document.frm;

		if (obj.query.name == 'empty' || !obj.data.value) {
			alert('Not Search!');
			obj.query.selectedIndex = 0;

			obj.data.value = '';
			obj.data.focus();
		} else {
			obj.submit();
		}

	}
	 
</script>

</head>
<body>
	<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
	<jsp:include page="/view/admin/navigation.jsp"></jsp:include>




	<div class="container">
		<%-- <%
	Users user = (Users)session.getAttribute("user");
     if(user!=null){
	int userno =user.getUserNo();
     }
     
	%> --%>
		<%
	request.setCharacterEncoding("EUC-KR");

	HashMap<String, Object> map = new HashMap<String, Object>();
	int currentPage = 1;
	int pageScale = 10;
	int totalRow = 0;
	String query = request.getParameter("query");
	String data = request.getParameter("data");

	if (query != null && data != null) {
		map.put("Q", query);
		map.put("D", data);
	}

	Integer tmpInt = NoticeDao.getInstance().getTotalRow(map);
	totalRow = (tmpInt == null ? 0 : tmpInt);
	String pageStr = request.getParameter("page");
	pageStr = (pageStr == null ? "1" : pageStr);
	currentPage = Integer.parseInt(pageStr);

	int totalPage = totalRow % pageScale == 0 ? totalRow / pageScale : totalRow / pageScale + 1;
	if (totalRow == 0)
		totalPage = 1;

	int start = 1 + (currentPage - 1) * pageScale;
	// int end=currentPage*pageScale;

	int end = pageScale + (currentPage - 1) * pageScale;
	if (totalRow < end) {
		end = totalRow;
	}

	int currentBlock = currentPage % pageScale == 0 ? (currentPage / pageScale) : (currentPage / pageScale) + 1;
	int startPage = 1 + (currentBlock - 1) * pageScale;
	int endPage = pageScale + (currentBlock - 1) * pageScale;
	if (totalPage <= endPage)
		endPage = totalPage;

	map.put("start", start);
	map.put("end", end);

	List<Notice> notice = NoticeDao.getInstance().getNotice(map);

	%>



		<div>
			<div class="well"><h3>게시판 리스트</h3></div>
			
			<div class="btn-group btn-group-justified">
				<a href="/web/view/admin/noticeManagement.jsp" class="btn btn-default"> <span class="glyphicon glyphicon-refresh"></span> 새로고침</a> 
				<a href="/web/view/admin/noticeInsert.jsp" class="btn btn-primary"> <span class="glyphicon glyphicon-pencil"></span> 글쓰기</a>
			</div>
			
			
			<div class="panel panel-defualt">
				<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
					<thead>
						<tr class="info">
							<th>순번</th>
							<th>제목</th>
							<th>작성일</th>
						</tr>
					</thead>
	
					<tbody>
						<%
							if (notice != null) {
								for (int i = 0; i < notice.size(); i++) {
						%>
						<tr onclick="(function() {location.href='/web/view/lim/board/notice/notice2.jsp?no=<%=notice.get(i).getNo()%>';})()" style="cursor:pointer">
							<td><%=notice.get(i).getRm()%></td>
							<td><%=notice.get(i).getTitle()%></td>
							<td><%=notice.get(i).getRegdate()%></td>
						</tr>
						<%
								}	//for
							} else {
						%>
						<tr>
							<td colspan="3">앗! 조회된 데이터 없음</td>
						</tr>
						<%
							}	//if
						%>
					</tbody>
				</table>
			</div>

			<div style="text-align: center;">
				<%
								if (query != null && data != null) {
							%>
				<!-- 검색일때는 검색결과 내에서 페이징. -->
				<a
					href="/web/view/admin/noticeManagement.jsp?page=1&query=<%=query%>&data=<%=data%>"><img
					src="/web/img/lim/button/btn_first.gif" alt="처음페이지" /></a>
				<%
								} else {
							%>
				<!-- 아니면 전체 데이터 내에서 페이징. -->
				<a href="/web/view/admin/noticeManagement.jsp?page=1"><img
					src="/web/img/lim/button/btn_first.gif" alt="처음페이지" /></a>
				<%
								}
							%>
				<%
								if (currentBlock > 1) {
							%>
				<%
								if (query != null && data != null) {
							%>
				<a
					href="/web/view/admin/noticeManagement.jsp?page=<%=startPage - 1%>&query=<%=query%>&data=<%=data%>"><img
					src="/web/img/lim/button/btn_prev.gif" alt="이전" /></a>
				<%
								} else {
							%>
				<a
					href="/web/view/admin/noticeManagement.jsp?page=<%=startPage - 1%>"><img
					src="/web/img/lim/button/btn_prev.gif" alt="이전" /></a>
				<%
								}
							%>
				<%
								} else {
							%>
				<a href="#"><img src="/web/img/lim/button/btn_prev.gif" alt="이전" /></a>
				<%
								}
							%>
				<%
								if (currentPage != startPage) {
							%>
				<%
								if (query != null && data != null) {
							%>
				<a
					href="/web/view/admin/noticeManagement.jsp?page=<%=currentPage - 1%>&query=<%=query%>&data=<%=data%>">BEFORE</a>
				<%
								} else {
							%>
				<a
					href="/web/view/admin/noticeManagement.jsp?page=<%=currentPage - 1%>">BEFORE</a>
				<%
								}
							%>
				<%
								} else {
							%>
				<!-- BEFORE -->
				<%
								}
							%>
				<span> <%
						 	for (int i = startPage; i <= endPage; i++) {
						 		if (i == currentPage) {
						 %> <font color="red" size="5">[<%=i%>]
				</font> <%
						 	continue;
						 		} else {
						 %> <%
						 	if (query != null && data != null) {
						 %> <a
					href="/web/view/admin/noticeManagement.jsp?page=<%=i%>&query=<%=query%>&data=<%=data%>">[<%=i%>]
				</a> <%
						 	} else {
						 %> <a href="/web/view/admin/noticeManagement.jsp?page=<%=i%>">[<%=i%>]
				</a> <%
						 	}
						 %> <%
						 	}
						 	}
						 %>
				</span>
				<%
								if (currentPage != endPage) {
							%>
				<%
								if (query != null && data != null) {
							%>
				<a
					href="/web/view/admin/noticeManagement.jsp?page=<%=currentPage + 1%>&query=<%=query%>&data=<%=data%>">NEXT</a>
				<%
								} else {
							%>
				<a
					href="/web/view/admin/noticeManagement.jsp?page=<%=currentPage + 1%>">NEXT</a>
				<%
								}
							%>
				<%
								} else {
							%>
				<!-- NEXT -->
				<%
								}
							%>
				<%
								if (totalPage > endPage) {
							%>
				<%
								if (query != null && data != null) {
							%>
				<a
					href="/web/view/admin/noticeManagement.jsp?page=<%=endPage + 1%>&query=<%=query%>&data=<%=data%>"><img
					src="/web/img/lim/button/btn_next.gif" alt="다음" /></a>
				<%
								} else {
							%>
				<a
					href="/web/view/admin/noticeManagement.jsp?page=<%=endPage + 1%>"><img
					src="/web/img/lim/button/btn_next.gif" alt="다음" /></a>
				<%
								}
							%>
				<%
								} else {
							%>
				<a href="#"><img src="/web/img/lim/button/btn_next.gif" alt="다음" /></a>
				<%
								}
							%>
				<%
								if (query != null && data != null) {
							%>
				<a
					href="/web/view/admin/noticeManagement.jsp?page=<%=totalPage%>&query=<%=query%>&data=<%=data%>"><img
					src="/web/img/lim/button/btn_last.gif" alt="마지막페이지" /></a>
				<%
								} else {
							%>
				<a href="/web/view/admin/noticeManagement.jsp?page=<%=totalPage%>"><img
					src="/web/img/lim/button/btn_last.gif" alt="마지막페이지" /></a>
				<%
								}
							%>
			</div>
		</div>
	</div>

</body>
</html>