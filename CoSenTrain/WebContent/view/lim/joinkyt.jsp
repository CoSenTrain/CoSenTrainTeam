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
         <th>�̸�</th>
         <td>������</td>
      </tr>
      <tr>
         <th>Ȩ������&lowast;</th>
         <td>
            <span class="spanPass">��й�ȣ</span><span><input type="text" /></span><span class="discription"> �ؿ��� �� ���ڸ� ������ 10�ڸ� �̻��� ��й�ȣ</span><br />
            <span class="spanPass">��й�ȣ Ȯ��</span><span><input type="text" /></span><br />
            <ul>
               <li>CoSen Ȩ������ �� �ۿ��� ����ϴ� �α��� ��й�ȣ �Դϴ�.</li>
            </ul>
         </td>
      </tr>
      <tr>
         <th>����߸�&lowast;</th>
         <td>
            <span class="spanPass">��й�ȣ</span><span><input type="text" /></span><span class="discription"> �ؼ��� 4�ڸ� ��й�ȣ</span><br />
            <span class="spanPass">��й�ȣ Ȯ��</span><span><input type="text" /></span><br />
            <ul>
               <li>�ڵ��߸ű� �� �� â������ ����ϴ� ����߸� ��й�ȣ�Դϴ�.</li>
               <li>������ �߱��ϰ��� �Ѵ� ������ �ش� ��й�ȣ 4�ڸ��� �˰� ���ž� �մϴ�.</li>
            </ul>
         </td>
      </tr>
      <tr>
         <th>�������&lowast;</th>
         <td>1991�� 11�� 06��</td>
      </tr>
      <tr>
         <th>����&lowast;</th>
         <td>����</td>
      </tr>
      <tr>
         <th>�̸���&lowast;</th>
         <td>
            <span><input type="text" size="37" /></span><button>�̸��� ����</button>
            <ul>
               <li>�̸��� ������ �����ø� SR Ȩ������ �� �ۿ��� �̸��Ϸ� �α����ҽ� �� �ֽ��ϴ�.</li>
               <li>�̸����� ����Ͻø� ���೻��, ����Ʈ����, ö���ҽ� ���� ���������� �� �ֽ��ϴ�.</li>
               <li>�̸��� ���� �� ������ ���ؼ��� ������ �����մϴ�.</li>
            </ul>
         </td>
      </tr>
      <tr>
         <th>�̸��� ���ſ���&lowast;</th>
         <td>
            <input type="radio" /> �� &nbsp;&nbsp;
            <input type="radio" /> �ƴϿ�
         </td>
      </tr>
      <tr>
         <th>������ȭ</th>
         <td><input type="text" /></td>
      </tr>
      <tr>
         <th>�޴���ȭ&lowast;</th>
         <td>
            <intput type="text" /> <button>�޴���ȭ ����</button>
            <ul>
               <li>�޴���ȭ��ȣ�� ����Ͻø� SR Ȩ������ �� �ۿ��� ������ȭ��ȣ�� �α����� �� �ֽ��ϴ�.</li>
               <li>�޴���ȭ��ȣ ���� �� ������ ���ؼ��� ������ �����մϴ�.</li>
            </ul>
         </td>
      </tr>
      <tr>
         <th>�ּ�&lowast;</th>
         <td>
            <input type="text" size="10" /> <button>�˻�</button><br />
            <input type="text" size="40"  /> <input type="text" size="40" style="margin-left:0;"  />
         </td>
      </tr>
   </table>
   <div style="text-align: center;">
      <input type="button" value="Ȯ��" />
      <input type="button" value="���" />
   </div>
</form>

</div>
















</div>
</body>
</html>