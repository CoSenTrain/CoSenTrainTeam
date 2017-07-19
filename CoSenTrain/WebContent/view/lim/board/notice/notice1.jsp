<%@page import="java.util.HashMap"%>
<%@page import="dao.lim.NoticeDao"%>
<%@page import="bean.lim.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
   <title>Hello</title>
   <link rel="shortcut icon" href="">
   <link href="/web/css/container/container.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="/web/css/container/fa.css" rel="stylesheet" type="text/css">
   <link href="/web/css/container/dropdown.css" rel="stylesheet" type="text/css">
   <link href="/web/css/container/standardColors.css" rel="stylesheet" type="text/css">

   <style>
      input {
         margin: 0;
         padding: 10px;
         border: 0;
         font-size: 15px;
      }
.login-wrapper {
   background-image: url("/web/img/bg/bg_container.jpg");
   background-repeat: repeat;
   background-size: inherit;
   background-position: center;
   background-color: #64053C;
}
      
.login-wrapper-center {
   width: 1000px;
   margin: 0 auto;
   background-color: snow;
}
.lim_join{
 
}
   </style>
</head>
<body>
<%
 

HashMap<String, Object> map = new HashMap<String, Object>();
int currentPage = 1;
int pageScale = 10;
int totalRow = 0;

try {
	totalRow = NoticeDao.getInstance().getTotalRow(map);

	currentPage = Integer.parseInt(request.getParameter("page"));

} catch (Exception e) {
	currentPage = 1;
}
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

List<Notice> notice =NoticeDao.getInstance().getNotice(map);
/* try {
	request.setAttribute("list", EditDao.selectEdit(map));
	request.setAttribute("pageBean", new PageBean(currentPage, totalPage, startPage, endPage, currentBlock));
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
 */


%>

   <div class="container">
      
      
      <jsp:include page="/view/container/containerTop.jsp" flush="false" />
<!-- LOGIN  Start -->
<div class="login-wrapper">
   <div class="login-wrapper-center">
      <br />
      <h1 style="padding: 30px 30px 0 30px;" class="tkting-method">공지사항</h1>
      <span style="float:right;font-size:12px;margin-right:30px;">
         <a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
         <i style="cursor:default;">&gt;</i>
         <a href="" style="cursor:pointer;text-decoration:none;color:black;">SR소식</a>
         <i style="cursor:default;">&gt;</i>
      <a href="#" style="cursor:pointer;text-decoration:none;color:black;" class="tkting-method">공지사항</a>
      </span>
      <br />
      <br />
      <br />
      
      <!--  start-->
      <div style="width:940px;padding:0 30px 30px 15px;height:1200px;background-color:white;">
      <span style="float: left;"> <ul><li>전체 <%=totalRow %>건</li></ul></span>   <span style="float: right;">
      <select style="width:80px; height:26px; padding-left:5px; border-width: 1px; border-style:solid; 
      border-color:#ccc; background-color: #f8f8f8; background-position:63px center; vertical-align: middle; "
       id="sel1">
      <option value="all" selected="selected">전체</option><option value="subject">제목</option>
      <option value="data">내용</option> 
      </select><input style="width:190px; height:24px; padding: 0 5px; border-width : 1px; border-style: solid; 
      border-color:#CCC; background-color: #f8f8f8; vertical-align: middle;" 
       type="text" size="20" id="searchData" name="searchData" value="">
      <input style="width:48px; height:26px; padding:0; font-size: 14px; color:white; background-color:crimson;  line-height: 0;
       border-style: none; cursor: pointer; vertical-align: middle;" type="submit" value="검색"/> </span><br>
       <br>
       <div style="width:940px; padding:10 30px 30px 15px; height:1200px; background-color: white; border: 1px solid lightgray;">
       <table >
       
       <colgroup>
       <col width="80px">
       <col width="740px">
       <col width="120px">
       
       </colgroup>
          <tr>
           <th style="padding:10px 0; font-weight: bold; line-height: 15px; color: #000; border-bottom-width: 1px;
            border-bottom-style: solid; border-bottom-color: #222; word-break:keep-all; "><br>순번</br></th>
           <th style="padding:10px 0; font-weight: bold; line-height: 15px; color: #000; border-bottom-width: 1px;
            border-bottom-style: solid; border-bottom-color: #222; word-break:keep-all; "><br>제목</br></th>
           <th style="padding:10px 0; font-weight: bold; line-height: 15px; color: #000; border-bottom-width: 1px;
            border-bottom-style: solid; border-bottom-color: #222; word-break:keep-all; "><br>작성일</br></th>
          </tr>
          
          <%
           for(int i=0;i<notice.size();i++){
          
          %>
            <tr style="color:gray; padding:3px 3px 3px 3px;">
             <td style="padding:15px 0; line-height:15px; text-align:center; border-bottom-width: 1px;
              border-bottom-style: solid; border-bottom-color: #dbdbdb; word-break:keep-all;"><%=notice.get(i).getRm() %></td>
             <td style="padding:15px 0; line-height:15px; text-align:center; border-bottom-width: 1px;
              border-bottom-style: solid; border-bottom-color: #dbdbdb; word-break:keep-all; "><a style="text-decoration: none; color:inherit;" href="/web/view/lim/board/notice/notice2.jsp?no=<%=notice.get(i).getNo()%>"><%=notice.get(i).getTitle() %></a></th>
             <td style="padding:15px 0; line-height:15px; text-align:center; border-bottom-width: 1px;
              border-bottom-style: solid; border-bottom-color: #dbdbdb; word-break:keep-all;"><%=notice.get(i).getRegdate() %></td>
            </tr>
       <%
           }
       %>
      
       </table>
       
        	<div style="text-align: center;">
         

		
				<a href="/web/view/lim/board/notice/notice1.jsp?page=1"><img
					src="/web/img/lim/button/btn_first.gif" alt="처음페이지" /></a>
                    <%
                     if(currentBlock>1){
                    
                    %>
                    	<a href="/web/view/lim/board/notice/notice1.jsp?page=<%=startPage-1%>"><img
							src="/web/img/lim/button/btn_prev.gif" alt="이전" /></a>
                    
                    <%
                     }else{
                    %>
                   <a href="/web/view/lim/board/notice/notice1.jsp?page=<%=currentPage-1%>"><img
							src="/web/img/lim/button/btn_prev.gif" alt="이전" /></a>
                   
                   <%
                   
                     }
                   %>
                   
              <%--      
				<c:choose>
					<c:when test="${pageBean.currentBlock gt 1}">
					
					</c:when>
					<c:otherwise>
						<a href="#"><img src="/web/img/lim/button/btn_prev.gif" alt="이전" /></a>
					</c:otherwise>
				</c:choose>
 --%>



<%-- 
				<c:choose>
					<c:when test="${pageBean.currentPage ne pageBean.startPage }">
						<a
							href="editList.do?cmd=editList&page=${pageBean.currentPage-1}">
							BEFORE</a>
					</c:when>
				</c:choose> --%>
				<%-- <span> <c:forEach var="i" begin="${pageBean.startPage }"
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
				</span> --%>
                   <span>
                    <%
                    
                     for(int i=0;i<=endPage;i++){
                    %>
                       
                       <%=i %>
                   <%
                   
                     }
                   %>
                   </span>
                   
                  <%
                     if(currentPage<=endPage){
                  %>
                   <a href="/web/view/lim/board/notice/notice1.jsp?page=<%=currentPage+1%>">
						NEXT</a>
                   <%
                     }
                  
                   if(totalPage>endPage){
                   %>
                   <a href="/web/view/lim/board/notice/notice1.jsp?page=<%=endPage+1%>"><img
							src="/web/img/lim/button/btn_next.gif" alt="다음" /></a>
                   
                   <%
                     }else{
                   %>
                     <a href="/web/view/lim/board/notice/notice1.jsp?page=<%=endPage+1%>"><img
							src="/web/img/lim/button/btn_next.gif" alt="다음" /></a>
                   <%
                   
                     }
                   %>
                   
			<%-- 	<c:if test="${pageBean.currentPage ne pageBean.endPage}">
					<a href="editList.do?cmd=editList&page=${pageBean.currentPage+1}">
						NEXT</a>
				</c:if>
										<c:choose>
					<c:when test="${pageBean.totalPage gt pageBean.endPage}">
						<a href="editList.do?cmd=editList&page=${pageBean.endPage+1}"><img
							src="/web/img/lim/button/btn_next.gif" alt="다음" /></a>

					</c:when>
					<c:otherwise>
						<a href="#"><img src="/web/img/lim/button/btn_next.gif" alt="다음" /></a>
					</c:otherwise>
				</c:choose>
 --%>
 
				<a href="/web/view/lim/board/notice/notice1.jsp?page=<%=totalPage%>"><img
					src="/web/img/lim/button/btn_last.gif" alt="마지막페이지" /></a>

		
           
         
             	</div>
       </div>
   
       
      
      </div>
      <!-- end -->
   </div>
   
</div>

<!-- LOGIN  End   -->
      <jsp:include page="/view/container/containerBottom.jsp" flush="false" />
         <!-- 수정 부분 -->
      </div>
   
   <script type="text/javascript"  src="/web/js/container/clock.js" charset="UTF-8"></script>
 
</body>
 
</html>
