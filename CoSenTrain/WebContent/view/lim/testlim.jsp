<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>������</title>

<script type="text/javascript" charset="utf-8">
	function showPop() {
		window.open("idcheck2.jsp", "id",
				"left=700,top=400,width=400,height=400");
	}
	function showAddress() {
		window.open("address.jsp", "address",
				"left=700,top=400,width=700,height=700");
	}
	function apply() {
		var obj = document.joinFrm;

		obj.submit();

	}
	function nameCheck() {
		var obj = document.joinFrm;
		if (!(obj.name.value && obj.name.value.length >= 2 && obj.name.value.length <= 8)) {
			alert('Name 2~8');
			if (obj.name.value && obj.name.value.length != -1) {
				obj.name.value = obj.name.value.substring(0, 7);
			}
		}
		if (obj.name.value && obj.name.value.length == 1) {
			obj.name.value = '';
		}

		//alert(obj);
		//alert(obj.name.value);
	}
	function passFun() {
		var obj = document.joinFrm;
		if (!(obj.password1.value && obj.password1.value == obj.password2.value)) {
			alert(event.type + '�н����� �̻�');
			obj.password1.value = '';
			obj.password2.value = '';
		} else {
			obj.password.value = obj.password1.value;
		}

	}
	var cnt = 0;
	function hobbyCheck(obj) {
		var ob = document.joinFrm;

		if (obj.checked) {
			if (cnt < 3) {
				cnt++;
				ob.hobby.value += obj.value + ',';
			} else {
				alert('3���̻� üũ�Ҽ� �����ϴ�.');
				obj.checked = false;
			}
		} else {
			cnt--;
			ob.hobby.value = ob.hobby.value.replace(obj.value + ',', '');
		}

		 

	}

	function answerCheck() {
		var obj = document.joinFrm;
		obj.qna.value = obj.question.value + '/' + obj.answer.value;
	}

	function cpCheck() {
		var obj = document.joinFrm;
		obj.cp.value = obj.cp1.value + '-' + obj.cp2.value + '-'
				+ obj.cp3.value;
	}
	function addresssum() {
		var obj = document.joinFrm;
		obj.address.value = obj.zip1.value + '-' + obj.zip2.value + '/'
				+ obj.address1.value + ' ' + obj.address2.value + '#'
				+ obj.address3.value;
	}

	function birthday() {
		var obj = document.joinFrm;
		if (!obj.year.value || !obj.month.value || !obj.day.value) {
			alert('�Է��� ���ּ���');
			clearDay(obj);
		} else {
			if (isNaN(obj.year.value) || isNaN(obj.month.value)
					|| isNaN(obj.day.value)) {
				alert('���ڸ� �Է�����������');
				clearDay(obj);
			} else {
				if (!(eval(obj.year.value) >= 1985 && eval(obj.year.value) <= 2000)
						|| !(eval(obj.month.value) >= 1 && eval(obj.month.value) <= 12)
						|| !(eval(obj.day.value) >= 1 && eval(obj.day.value) <= 31)) {
					alert('1985~2000����̸� �Է� �����մϴ�.')
					clearDay(obj);
				}else{
					obj.birthday.value=obj.year.value+obj.month.value+obj.day.value;
				}
			}
		}

	}

	function clearDay(obj) {
		obj.year.value = '';
		obj.month.value = '';
		obj.day.value = '';
		obj.year.focus();
	}

	function mailAddress(){
		var obj =document.joinFrm;
		obj.mail2.value=obj.mail3.value;
		if(obj.mail2.value&&obj.mail1.value){
			obj.email.value=obj.mail1.value+'@'+obj.mail2.value;
		}
		
	}
	
	function mailAdd(){
		var obj = document.joinFrm;
		if(obj.mail2.value){
		obj.email.value=obj.mail1.value+'@'+obj.mail2.value;
		}
	}
	
	function rxFun(v){
		var obj = document.joinFrm;
		if(v==1){
			obj.gender.value='��';
		}else{
			obj.gender.value='��';
		}
	}
	/* function mail1Check(obj){
		var ob=document.joinFrm;
	   ob.email.value+=obj.value;
	}
	
	function mail2Check(obj){
		var ob=document.joinFrm;
		ob.email.value+=obj.value;
	} */
</script>
<style type="text/css">
* {
	background: cyan;
}

table {
	float: center;
	border: dotted 20px navy;
	width: 700px;
	height: 400px;
	margin: 0 auto;
}

.apply {
	float: center;
	width: 100px;
	margin: 0 auto;
}

.title {
	float: center;
	width: 200px;
	margin: 0 auto;
}
</style>
</head>
<body>

	<form action="joinInsert.jsp" name="joinFrm" method="post">
		<h1 class="title">ȸ������</h1>
		<div>
			<table>

				<colgroup>
					<col width="95" />
					<col />
				</colgroup>
				<tbody>
					<tr>
						<th>�̸�</th>
						<td><input type="text" name="name" class="inputText"
							required="required" maxlength="5" size="30" onblur="nameCheck()" /></td>
					</tr>
					<tr>
						<th>���̵�</th>
						<td><input type="text" name="id" class="inputText" size="30"
							value="" readonly="readonly" /> <span class="buttonFuc"
							onclick=""><a href="javascript:showPop()">�ߺ�üũ</a></span></td>
					</tr>
					<tr>
						<th>��й�ȣ</th>
						<td><input type="password" name="password1" class="inputText"
							size="30" /></td>
					</tr>
					<tr>
						<th>Ȯ��</th>
						<td><input type="password" name="password2" class="inputText"
							size="30" onblur="passFun()" />

							<td><input type="hidden" name="password"></input></td></td>
					</tr>


					<tr>
						<th>���</th>
						<td><input type="checkbox" name="hob" value="����"
							onclick="hobbyCheck(this)" />���� <input type="checkbox"
							name="hob" value="��" onclick="hobbyCheck(this)" />�� <input
							type="checkbox" name="hob" value="�ٵ�" onclick="hobbyCheck(this)" />�ٵ�
							<input type="checkbox" name="hob" value="���"
							onclick="hobbyCheck(this)" />��� <input type="checkbox"
							name="hob" value="����" onclick="hobbyCheck(this)" />���� <input
							type="hidden" name="hobby" value=""></input></td>
					</tr>
					<tr>
						<th>����</th>
						<td><select name="question"">
								<option selected="selected">�����ϼ���</option>
								<option value="treasure">����1ȣ</option>
								<option value="elementary">�ʵ��б����̸�</option>
								<option value="pet">�ֿϵ����̸�</option>
								<option value="enjoytravel">��ſ� ������?</option>
								<option value="preferredcolor">�����ϴ� ����?</option>
						</select> <input type="text" name="answer" class="inputText" size="30"
							onblur="answerCheck()" /> <input type="hidden" name="qna"
							value="" /></td>
					</tr>
					<tr>
						<th>����</th>
						<td><label for="male"> <input type="radio"
								class="inputRadio" name="gender1" id="male" value="��"
								onclick="rxFun('1')" />��
						</label> <label for="female"> <input type="radio"
								class="inputRadio" name="gender1" id="female" value="��"
								onclick="rxFun('2')" />��
						</label> <input type="hidden" name="gender" value="" />
						    
						</td>
					</tr>
					<tr>
						<th>�������</th>
						<td>
						<!-- <input name="year" type="text" value="" /> <input
							name="month" type="text" value="" /> <input name="day"
							type="text" value="" onblur="birthday()" /> 
						 -->	
							 <input name="birthday" type="date" min="1950-01-01" value=""
							max="2019-01-01"> --></td>
						<tr>
							<th>�ּ�</th>
							<td class="alignM">
								<p class="mgb3">
									<input type="text" name="zip1" value="" class="inputText"
										size="10" />-<input type="text" name="zip2" value=""
										class="inputText" size="10" /> <span class="buttonFuc"><a
										href="javascript:showAddress()">�����ȣ</a></span>
								</p>
								<p class="mgb3">
									<input type="text" name="address1" class="inputText" value=""
										size="50" /> <input type="text" name="address2"
										class="inputText" value="" size="50" onblur="addresssum()" />
									<input type="hidden" name="address3" value="" size="70" /> <input
										type="hidden" name="address" value="" size="70"></input>
								</p>
							</td>
						</tr>
						<tr>
							<th>�̸���</th>
							<td><input type="text" name="mail1" required="required"
								maxlength="30" class="inputText" size="10" value="" onblur="mailAdd()" />@ 
								 <input type="text" name="mail2" disabled="disabled" size="10"></input>
								<select
								name="mail3" onclick="mailAddress()">
									<option selected="selected">�����ϼ���</option>
									<option value="naver.com">naver.com</option>
									<option value="daum.net">daum.net</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="nate.com">nate.com</option>
									<option value="gmail.com">gmail.com</option>

							</select> <input type="hidden" name="email" value="" /></td>



						</tr>
						<tr>
							<th>��ȭ��ȣ</th>
							<td><input type="tel" name="tel" placeholder="000-0000-0000" value=""
								pattern="\d{2,4}\-?d{3,4}\-?d{4}"> <!-- <input type="text" name="" class="inputText" size="10" />
						- <input type="text" name="" class="inputText" size="10" /> - <input
						type="text" name="" class="inputText" size="10" /></t -->
						</tr>
					<tr>
						<th>�޴�����ȣ</th>
						<td><input type="text" name="cp1" class="inputText" size="10" />
							- <input type="text" name="cp2" class="inputText" size="10" /> -
							<input type="text" name="cp3" class="inputText" size="10"
							onblur="cpCheck()" /> <input type="hidden" name="cp" size="10" /></td>
					</tr>
				</tbody>
			</table>
			<div class="apply">
				<span class="apply"><a href="javascript:apply()"
					class="apply">���</a></span>
			</div>
		</div>
		</div>
	</form>
</body>
</html>