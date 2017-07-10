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
      <div style="width:940px;padding:0 30px 30px 15px;height:700px;background-color:white;">
      <span style="float: left;"> <ul><li>전체 건</li></ul></span>   <span style="float: right;">
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
       <div style="width:940px; padding:10 30px 30px 15px; height:600px; background-color: white; border: 1px solid lightgray;">
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
            <tr style="color:gray; padding:3px 3px 3px 3px;">
             <td style="padding:15px 0; line-height:15px; text-align:center; border-bottom-width: 1px;
              border-bottom-style: solid; border-bottom-color: #dbdbdb; word-break:keep-all;">no</td>
             <td style="padding:15px 0; line-height:15px; text-align:center; border-bottom-width: 1px;
              border-bottom-style: solid; border-bottom-color: #dbdbdb; word-break:keep-all;">contents</th>
             <td style="padding:15px 0; line-height:15px; text-align:center; border-bottom-width: 1px;
              border-bottom-style: solid; border-bottom-color: #dbdbdb; word-break:keep-all;">regdate</td>
            </tr>
       
       
       </table>
       
       
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
