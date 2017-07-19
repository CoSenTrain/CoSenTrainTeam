<%@page import="bean.lim.Notice"%>
<%@page import="dao.lim.NoticeDao"%>
<%@page import="bean.kwon.Users"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>notice</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
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
<div>
	<%
	Users user = (Users)session.getAttribute("user");
  int userno =user.getUserNo();
	%>
	<%
	
  List<Notice> notice=NoticeDao.getInstance().getNotice(null);

	%>
	
	
		 
		<div>
			<div >
				<div >
					<h1 >게시판 리스트</h1>
					<div >
						<span> <span><a
								href="/web/view/admin/noticeManagement.jsp">새로고침</a></span> 
								<span><a
								href="/web/view/admin/noticeInsert.jsp">글쓰기</a></span>
						</span>
					</div>
				 
						 
					<table>
						<colgroup>
							<col width="30" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />

						</colgroup>
						<thead>
							<tr>
								<th scope="col">NO</th>
								<th scope="col">TITLE</th>
								<th scope="col">REGDATE</th>

							</tr>
						</thead>

						<tbody>
						  <%
						  
						     for(int i=0;i<notice.size();i++){
						   %>
						  
								<tr>
									<td><%=notice.get(i).getNo() %></td>
<%-- 									<td><a href="editHit.do?cmd=editHit&no=${i.no}&page=${pageBean.currentPage}&job=info">${i.writer}</a></td> --%>
									<td><%=notice.get(i).getTitle() %></td>
									<td><%=notice.get(i).getRegdate() %></td>


								</tr>
							
							<%
						     }
							%>

						</tbody>
					</table>

					<div class="paging">
						<a href="#"><img
							src="/web/img/lim/button/btn_first.gif" alt="처음페이지" /></a>

						<c:choose>
							<c:when test="${pageBean.currentBlock gt 1}">
								<a href="editList.do?cmd=editList&page=${pageBean.startPage-1}"><img
									src="/web/img/lim/button/btn_prev.gif" alt="이전" /></a>
							</c:when>
							<c:otherwise>
								<a href="#"><img src="/web/img/lim/button/btn_prev.gif" alt="이전" /></a>
							</c:otherwise>
						</c:choose>





						<c:choose>
							<c:when test="${pageBean.currentPage ne pageBean.startPage }">
								<a
									href="#">
									BEFORE</a>
							</c:when>
						</c:choose>
						<span> <c:forEach var="i" begin="${pageBean.startPage }"
								end="${pageBean.endPage }" step="1">
								<c:choose>
									<c:when test="${i eq pageBean.currentPage}">
										<font color="red" size="3">[${i}]</font>
									</c:when>
									<c:otherwise>
										<a href="#">[${i }]</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</span>

						<c:if test="${pageBean.currentPage ne pageBean.endPage}">
							<a href="#">
								NEXT</a>
						</c:if>
												<c:choose>
							<c:when test="${pageBean.totalPage gt pageBean.endPage}">
								<a href="#"><img
									src="/web/img/lim/button/btn_next.gif" alt="다음" /></a>

							</c:when>
							<c:otherwise>
								<a href="#"><img src="/web/img/lim/button/btn_next.gif" alt="다음" /></a>
							</c:otherwise>
						</c:choose>

						<a href="#"><img
							src="/web/img/lim/button/btn_last.gif" alt="마지막페이지" /></a>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>