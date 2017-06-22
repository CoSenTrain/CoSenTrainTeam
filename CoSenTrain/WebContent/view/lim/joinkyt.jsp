<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div style="padding:20px; text-shadow:">

<style>

.table-wrapper {
   border-spacing: 0;
   border-top: 2px solid #F3F3F3;
   width: 940px;
   background-color: yellow;
}

th {
   background-color: #F3F3F3;
   padding: 10px;
   text-align: left;
}

td {
   background-color: white;
   width: 740px;
   padding: 10px;
}

span {
   display: inline-block;
}

.spanPass {
   width: 120px;
}

.discription {
   margin-left: 10px;
   font-size: 13px;
}

input[type="text"] {
   display: inline-block;
   background-color: #F3F3F3;
   padding: 3px;
   margin: 3px;
}

ul {
   padding-left: 20px;
   margin: 0;
}

ul li {
   font-size: 13px;
}

button {
   display: inline-block;
   font-weight: bold;
   color: snow;
   background-color: #666;
   height: 25px;
   border: 0;
   border-radius: 0 7px;
   padding: 0 15px 5px 15px;
}

input[type="radio"] {
   margin-top: 0;
   width: 17px;
   height: 17px;
   border: 2px solid lightgray;
}

input[type="button"] {
   display: inline-block;
   font-weight: bold;
   color: snow;
   width: 150px;
   height: 40px;
   border: 0;
   border-radius: 0 7px;
   margin: 10px 1px;
}

input[type="button"]:first-child {
   background-color: crimson;
}

input[type="button"]:last-child {
   background-color: #666;
}

</style>


<div class="table-wrapper">


<form action="#" >
   <table>
      <colgroup>
         <col width="200px" />
         <col />
      </colgroup>
      <tr>
         <th>이름</th>
         <td>이현준</td>
      </tr>
      <tr>
         <th>홈페이지&lowast;</th>
         <td>
            <span class="spanPass">비밀번호</span><span><input type="text" /></span><span class="discription"> ※영문 및 숫자를 조합한 10자리 이상의 비밀번호</span><br />
            <span class="spanPass">비밀번호 확인</span><span><input type="text" /></span><br />
            <ul>
               <li>CoSen 홈페이지 및 앱에서 사용하는 로그인 비밀번호 입니다.</li>
            </ul>
         </td>
      </tr>
      <tr>
         <th>현장발매&lowast;</th>
         <td>
            <span class="spanPass">비밀번호</span><span><input type="text" /></span><span class="discription"> ※숫자 4자리 비밀번호</span><br />
            <span class="spanPass">비밀번호 확인</span><span><input type="text" /></span><br />
            <ul>
               <li>자동발매기 및 역 창구에서 사용하는 현장발매 비밀번호입니다.</li>
               <li>역에서 발권하고자 한느 고객님은 해당 비밀번호 4자리를 알고 가셔야 합니다.</li>
            </ul>
         </td>
      </tr>
      <tr>
         <th>생년월일&lowast;</th>
         <td>1991년 11월 06일</td>
      </tr>
      <tr>
         <th>성별&lowast;</th>
         <td>남자</td>
      </tr>
      <tr>
         <th>이메일&lowast;</th>
         <td>
            <span><input type="text" size="37" /></span><button>이메일 인증</button>
            <ul>
               <li>이메일 인증을 받으시면 SR 홈페이지 및 앱에서 이메일로 로그인할실 수 있습니다.</li>
               <li>이메일을 등록하시면 예약내역, 포인트내역, 철도소식 등을 제공받으실 수 있습니다.</li>
               <li>이메일 변경 시 인증을 통해서면 변경이 가능합니다.</li>
            </ul>
         </td>
      </tr>
      <tr>
         <th>이메일 수신여부&lowast;</th>
         <td>
            <input type="radio" /> 예 &nbsp;&nbsp;
            <input type="radio" /> 아니오
         </td>
      </tr>
      <tr>
         <th>자택전화</th>
         <td><input type="text" /></td>
      </tr>
      <tr>
         <th>휴대전화&lowast;</th>
         <td>
            <intput type="text" /> <button>휴대전화 인증</button>
            <ul>
               <li>휴대전화번호를 등록하시면 SR 홈페이지 및 앱에서 수대전화번호로 로그인할 수 있습니다.</li>
               <li>휴대전화번호 변경 시 인증을 통해서만 변경이 가능합니다.</li>
            </ul>
         </td>
      </tr>
      <tr>
         <th>주소&lowast;</th>
         <td>
            <input type="text" size="10" /> <button>검색</button><br />
            <input type="text" size="40"  /> <input type="text" size="40" style="margin-left:0;"  />
         </td>
      </tr>
   </table>
   <div style="text-align: center;">
      <input type="button" value="확인" />
      <input type="button" value="취소" />
   </div>
</form>

</div>
















</div>
</body>
</html>