<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body onload="math()">
  
  
  <form action="" name="joinFrm" method="post">
  <table border="1" background="cyan">
     <tr>
          <td><label>�̸�  </label></td>
     <td><input type="text" placeholder="ȫ�浿" size="20" ></td>
     <td><select><option value="������">������ </option> 
      <option value="�ܱ���">�ܱ��� </option>
     </select></td>
      </tr>
      <tr>
    <td><label>�������</label></td> 
    <td><input type="text" placeholder="ex.19800101" size="20"/> </td>
    <td><label for="male"> <input type="radio"
								class="inputRadio" name="gender1" id="male" value="��"
								onclick="rxFun('1')" />��
						</label> <label for="female"> <input type="radio"
								class="inputRadio" name="gender1" id="female" value="��"
								onclick="rxFun('2')" />��
						</label> <input type="hidden" name="gender" value="" />  
       </tr>
     <tr>
     <td><label>�޴�����ȣ</label> </td>
      <td colspan="2"><input type="text" placeholder="-�����ϰ� ���ڸ� �Է�" size="30" ></td>
 </tr> 
  </table>
 <table>
 <tr bordercolor="cyan">
 <td rowspan="2"> <input type="text" id="math" value="" readonly="readonly"> </td>
 
 <td><label> ���ȼ����Է� <br/>  <input type="text" size="20">  </label>  </td> </tr> 
  </table>
 <table>
  <tr><td><input name="p" type="checkbox">���������̿뵿��</td><td><input name="a" type="checkbox">�����ĺ�����ó�� ����</td>  </tr>
  <tr><td><input name="s" type="checkbox">�����̿��� ����</td><td><input name="t" type="checkbox">��Ż��������</td>  </tr>
 </table>
   <input type="button" value="Ȯ��" onclick="lim_submit()">
</form>
</body>
<script type="text/javascript">
function math(){
 var obj=document.getElementById("math");
 obj.value= Math.random()*10000;	
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
	   alert('üũ�ڽ��� �Է����ּ���');
   } */
   window.open("popup3.jsp", "id",
	"left=700,top=400,width=400,height=400");

}

</script>

</html>