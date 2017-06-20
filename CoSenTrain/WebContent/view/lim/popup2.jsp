<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">



</script>
</head>
<body onload="math()">
  
  
  <form action="popup3.jsp" name="joinFrm" method="post">
  <table border="1" background="cyan">
     <tr>
          <td><label>이름  </label></td>
     <td><input type="text" name="name" placeholder="홍길동" size="20" ></td>
     <td><select><option value="내국인">내국인 </option> 
      <option value="외국인">외국인 </option>
     </select></td>
      </tr>
      <tr>
    <td><label>생년월일</label></td> 
    <td><input type="text" name="birth" placeholder="ex.19800101" size="20"/> </td>
    <td><label for="male"> <input type="radio"
								class="inputRadio" name="gender1" id="male" value="남"
								onclick="rxFun('1')" />남
						</label> <label for="female"> <input type="radio"
								class="inputRadio" name="gender1" id="female" value="여"
								onclick="rxFun('2')" />여
						</label> <input type="hidden" name="gender" value="" />  
       </tr>
     <tr>
     <td><label>휴대폰번호</label> </td>
      <td colspan="2"><input type="text" name="phone" placeholder="-제외하고 숫자만 입력" size="30" ></td>
 </tr> 
  </table>
 <table>
 <tr bordercolor="cyan">
 <td rowspan="2"> <input type="text" id="math" value="" readonly="readonly"> </td>
 
 <td><label> 보안숫자입력 <br/>  <input type="text" size="20">  </label>  </td> </tr> 
  </table>
 <table>
  <tr><td><input name="p" type="checkbox" onclick="agreeCheck(this)">개인정보이용동의</td><td><input name="a" type="checkbox" onclick="agreeCheck(this)">고유식별정보처리 동의</td>  </tr>
  <tr><td><input name="s" type="checkbox" onclick="agreeCheck(this)">서비스이용약관 동의</td><td><input name="t" type="checkbox" onclick="agreeCheck(this)">통신사용약관동의</td>  </tr>
 </table>
   <input type="button" value="확인" onclick="lim_submit()">
</form>
</body>
<script type="text/javascript">
function math(){
 var obj=document.getElementById("math");
 obj.value= Math.floor(Math.random() * 10000) + 1;	
}

function lim_submit(){
 /*   var p=document.getElementsByName("p");
   var a=document.getElementsByName("a");
   var s=document.getElementsByName("s");
   var t=document.getElementsByName("t");
     alert(p.checked);
   
   if(p.checked&&a.checked&&s.checked&&t.checked){
	  alert('nice'); 
	//var obj = document.joinFrm;
   }else{
	   alert('체크박스를 입력해주세요');
   } */
   window.open("popup3.jsp", "id",
	"left=700,top=400,width=400,height=400");

}

function rxFun(r) {
	var obj= document.joinFrm;
	if(r==1){
	  obj.gender.value='남';	
	}else{
		obj.gender.value='여';
	}
	
}

function agreeCheck(){
	var obj=document.joinFrm;
	
	if(obj.checked){
		
	}
	
}

</script>

</html>