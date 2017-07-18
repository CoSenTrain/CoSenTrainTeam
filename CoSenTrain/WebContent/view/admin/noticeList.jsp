<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>trainSchedule</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>

<script>

</script>

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
	<div id="wrapper">
		 
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">게시판 리스트</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"><a
								href="editList.do?cmd=editList">새로고침</a></span> <span class="button"><a
								href="javascript:sendCheck()">검색</a></span> <span class="button"><a
								href="train/edit.jsp">글쓰기</a></span>
						</span>
					</div>
					<form action="trainList.jsp" name="frm" method="post">
						<table class="bbsWrite mgb35">
							<caption></caption>
							<colgroup>
								<col width="30" />
								<col width="150" />
								<col width="150" />
								<col width="150" />
								<col width="150" />
								<col width="150" />
							</colgroup>

							<tbody>
								<tr>
									<th>검색</th>
									<td><select name="query">
											<option value="empty" selected="selected">선택하세요</option>
											<option value="writer">작성자</option>
											<option value="title">제목</option>
											<option value="contents">내용</option>
											<option value="id">내가쓴글</option>

									</select> <input type="text" name="data" class="inputText" size="30" />
									</td>
								</tr>
							</tbody>
						</table>
					</form>
					<table class="bbsList">
						<colgroup>
							<col width="30" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />

						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="fir">NO</th>
								<th scope="col">IMAGE</th>
								<th scope="col">WRITER</th>
								<th scope="col">TITLE</th>
								<th scope="col">HIT</th>
								<th scope="col">REGDATE</th>

							</tr>
						</thead>

						<tbody>
							<c:forEach var="i" items="${list}" varStatus="cnt">
								<tr>
									<td>${cnt.count}</td>
									
									<td><a href="hit.jsp?no=${i.no }"><img
											src="/web/upload/noimage.jpg" width="50" height="50" /></a></td>
									<td><a href="editHit.do?cmd=editHit&no=${i.no}&page=${pageBean.currentPage}&job=info">${i.writer}</a></td>
									<td>
									    
										<%-- <%if(b.getNo()==b.getRef()){ %> --%> <c:choose>
											<c:when test="${i.no eq i.ref }">
												<img src="/web/upload/new-0.png" width="30" height="30" />
											</c:when>
											<c:when test="${i.lev gt 0 }">
												<c:forEach var="j" begin="0" end="${i.lev }" step="1">
						          &nbsp;&nbsp;&nbsp;						          
						          </c:forEach>
												<img src="/web/imgtemp/logo-replya-2x.png" width="30"
													height="30" />
											</c:when>
										</c:choose> ${i.title} <span class="button"><a href="#">답글수${i.reply}</a></span>
									</td>
									<td>${i.hit}</td>
									<td>${i.regdate}</td>


								</tr>
							</c:forEach>

						</tbody>
					</table>

					<div class="paging">
						<a href="editList.do?cmd=editList&page=1"><img
							src="./img/button/btn_first.gif" alt="처음페이지" /></a>

						<c:choose>
							<c:when test="${pageBean.currentBlock gt 1}">
								<a href="editList.do?cmd=editList&page=${pageBean.startPage-1}"><img
									src="./img/button/btn_prev.gif" alt="이전" /></a>
							</c:when>
							<c:otherwise>
								<a href="#"><img src="./img/button/btn_prev.gif" alt="이전" /></a>
							</c:otherwise>
						</c:choose>





						<c:choose>
							<c:when test="${pageBean.currentPage ne pageBean.startPage }">
								<a
									href="editList.do?cmd=editList&page=${pageBean.currentPage-1}">
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
										<a href="editList.do?cmd=editList&page=${i}">[${i }]</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</span>

						<c:if test="${pageBean.currentPage ne pageBean.endPage}">
							<a href="editList.do?cmd=editList&page=${pageBean.currentPage+1}">
								NEXT</a>
						</c:if>
												<c:choose>
							<c:when test="${pageBean.totalPage gt pageBean.endPage}">
								<a href="editList.do?cmd=editList&page=${pageBean.endPage+1}"><img
									src="./img/button/btn_next.gif" alt="다음" /></a>

							</c:when>
							<c:otherwise>
								<a href="#"><img src="./img/button/btn_next.gif" alt="다음" /></a>
							</c:otherwise>
						</c:choose>

						<a href="editList.do?cmd=editList&page=${pageBean.totalPage }"><img
							src="./img/button/btn_last.gif" alt="마지막페이지" /></a>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>