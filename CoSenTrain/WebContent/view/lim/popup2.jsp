<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
  $(function(){
	  
  });
</script>
<script type="text/javascript">



</script>
</head>
<body onload="math()">
 
 
  <div style="width:400px; height:400px; border: 1px solid lightgray;">
  <div style="width:400px; height:50px;"><img alt="" src="/web/img/lim/join/niceid.JPG"> </div>
  <div style="width:400px; height:20px;   text-align: center; font-size: 14px; font-weight: bold; margin-bottom:20px;"><i class="fa fa-envelope-o"></i> �޴�������Ȯ�� (����) </div>
  <form action="popup3.jsp" name="joinFrm" method="post">
  <div style="width:360px; background-color:#f9f9fa; height:90px; border : 1px solid lightgray; margin: 0 auto; ">
  <table>
     <tr>
          <td><label>�̸�  </label></td>
     <td><input type="text" id="name" name="name" placeholder="ȫ�浿" size="20" value="" ></td>
     <td><select name="nation"><option value="������">������ </option> 
      <option value="�ܱ���">�ܱ��� </option>
     </select></td>
      </tr>
      <tr>
    <td><label>�������</label></td> 
    <td><input type="text" id="birth" name="birth" placeholder="ex.19800101" size="20" value=""/> </td>
    <td><label for="male"> <input type="radio"
								class="inputRadio" name="gender1" id="male" value="��"
								onclick="rxFun('1')" />��
						</label> <label for="female"> <input type="radio"
								class="inputRadio" name="gender1" id="female" value="��"
								onclick="rxFun('2')" />��
						</label> <input type="hidden" id="gender" name="gender" value="" />  
       </tr>
     <tr>
     <td><label>�޴�����ȣ</label> </td>
      <td colspan="2"><input type="text" id="phone" name="phone" value="" placeholder="-�����ϰ� ���ڸ� �Է�" size="30" ></td>
 </tr> 
  </table>
  </form>
  </div>
  <div style="width:360px; height:15px;"></div>
  <div style="width:360px; height:50px; border : 1px solid lightgray; text-align: center; margin: 0 auto; ">
    <div>
  <div style="float:left;">
   <div style="width:140px; margin-top:12px; margin-left:20px;"><input type="text" id="math" value="" size="14"  readonly="readonly"></div>
  
  </div>
  <div style="float: left; margin-left:30px;  ">  
   <div style="width:140px; font-size: 9px; float:left;"><b>���ȼ����Է�</b><br><input type="text" size="15" id="securityMath" value="" onblur="checkMath()"> </div>
  </div>
  </div>
  </div>
    <div style="width:360px; height:15px;"></div>
  <div>
 <table>
 
  <tr><td><input style="margin-left:20px;" id="p" name="p" type="checkbox" onclick="agreeCheck(this)">���������̿뵿��</td><td><input name="a" id="a" type="checkbox" onclick="agreeCheck(this)">�����ĺ�����ó�� ����</td>  </tr>
  <tr><td><input style="margin-left:20px;" id="s" name="s" type="checkbox" onclick="agreeCheck(this)">�����̿��� ����</td><td><input name="t" id="t" type="checkbox" onclick="agreeCheck(this)">��Ż��������</td>  </tr>

 </table>
 </div>
   <div style="width:360px; height:15px;"></div>
   <div style="text-align: center;">
 <button style="text-align: center; width: 150px;
	height: 43px;
	margin: 0 auto;
	margin-top: 3px;
	border: 0;
	color: snow;
	font-weight: bold;
	background-color: gray;
	border-radius: 0 7px;
	cursor: pointer;" onclick="lim_submit()">Ȯ�� </button></div>
   <div style="width:360px; height:15px;"></div>
<div style="width:400px; height:50px;"><img alt="" src="/web/img/lim/join/nice2.JPG"></div>
 

</body>
<script type="text/javascript">
cnt=0;
function math(){
 var obj=document.getElementById("math");
 obj.value= Math.floor(Math.random() * 10000) + 1;	
 cnt=obj.value;
}
function checkMath(){
	var obt =document.getElementById("securityMath");
    if(obt.value==cnt){
    	alert('��ġ�մϴ�.');
    	return true;
    }else{
    	alert('����ġ�մϴ�.');
    	return false;
    }
}

function checkMember(){
	var obj1 = document.getElementById("name");
	var obj2 = document.getElementById("birth");
	var obj3 = document.getElementById("phone");
	var obj4 = document.getElementById("gender");
    
  
    if(obj1.value!=""&&obj2.value!=""&&obj3.value!=""&&obj4.value!=""){
    	return true;
    	
    }else{
    	alert('������������� �Է����ּ���');
    }
	 

}

function lim_submit(){
	 
	  if(checkMember()&&checkMath()&&agreeCheck()){
	   var obj=document.joinFrm;
		obj.submit();
	   alert('�����մϴ�.');
	 }else{
		 alert('�Է»����� ��� �Է����ּ���');
	 }  
   
  

}

function rxFun(r) {
	var obj= document.joinFrm;
	if(r==1){
	  obj.gender.value='��';	
	}else{
		obj.gender.value='��';
	}
	
}

function agreeCheck(obj){
 var p= document.getElementById("p")
 var s= document.getElementById("s")
 var a= document.getElementById("a")
 var t=  document.getElementById("t")
 
  if(p.checked&&s.checked&&a.checked&&t.checked){
	 return true;
  }else{
	  return false;
	  alert('����� ��� �������ּ���');
  }
	
}

</script>

</html>