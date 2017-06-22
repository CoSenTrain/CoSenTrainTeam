<%@page import="bean.lim.ZipCode"%>
<%@page import="java.util.List"%>
<%@page import="dao.lim.ZipCodeDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>우편번호 찾기</title>
<link href="/web/css/lim/common.css" rel="stylesheet" type="text/css" />
<link href="/web/css/lim/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function searchDong() {
		var obj = document.searchFrm;
		if(!obj.dong.value){
            alert('Dong Check');
            return false;
		}else{
			
		obj.submit();
			
		}
			
	}
	
	function sendAddress(a,b,c,d,e,f){
 
		
		opener.joinFrm.zip.value=a;
		opener.joinFrm.addr1.value=b+' '+c+' '+d+' '+e;
		opener.joinFrm.addr3.value=f;
		self.close(); 
	}
	 
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<%
		request.setCharacterEncoding("EUC-KR");
		String dong = request.getParameter("dong");
		List<ZipCode> list = null;
		if (dong != null||dong!="") {
			list = ZipCodeDao.selectZipCode(dong);
		}
	%>


	<form action="zipCode.jsp" name="searchFrm" method="post">
		<table width="400" height="380" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="top" background="/web/img/lim/join/join_pop_bg1.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="45" colspan="3"><img
								src="/web/img/lim/join/join_pop_title4.gif" width="115" height="20"></td>
						</tr>
						<tr>
							<td width="50" height="30">&nbsp;</td>
							<td>&nbsp;</td>
							<td width="50">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td align="center" style="padding: 10">찾고자 하는 지역의
								&quot;읍,면,동&quot; 이름을 입력하세요.<br> 예: 구의동일 경우, '구의' 로 검색하세요.
							
							</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td height="7"></td>
							<td></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td height="40" align="center" bgcolor="F5F5F5">주소검색 <input
								name="dong" type="text" size="25" class="input"> <input
									type="image" src="/web/img/lim/join/btn_search.gif" width="36"
									height="18" border="0" align="absmiddle" onclick="searchDong()"></td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td height="7">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td style="padding: 1" bgcolor="#DDDDDD">


								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr height="1" bgcolor="f4f4f4">

										<td></td>
										<td></td>



									</tr>
									<tr bgcolor="ddddddd">
										<td width="1" bgcolor="f4f4f4"></td>
										<td height="25" align="center" bgcolor="EEEEEE">해당 주소를
											선택하세요.</td>
										<td width="1" bgcolor="f4f4f4"></td>
									</tr>
								</table>
								<div style="height: 120px; width: 300; overflow: auto;">
									<table width="100%" height="120" border="0" cellpadding="0"
										cellspacing="0" bgcolor="#FFFFFF" class="gray_blue">
										<tr border="1">
											<td>zipcode</td>
											<td>sido</td>
											<td>gugun</td>
											<td>dong</td>
											<td>bunji</td>
										</tr>
										

										<%
										  String temp="";
											if (list != null&&dong!=null) {
												for (ZipCode b : list) {
										                  
										%>
                                            
										<tr border="1">
										       <%     
										       
										        String zipcode=b.getZipCode();
										        String sido =b.getSido();
										        String gugun = b.getGugun();
										        String bunji  = b.getBunji();
										        String dong1 =b.getDong();
										        int zipcodeno= b.getZipCodeNo();
										        temp= sido+gugun+dong+bunji;
										       %>
											<td height="20" style="padding-left: 25; width: 200px;"> <a href="javascript:sendAddress(''<%=zipcode%>','<%=sido%>','<%=gugun%>','<%=dong1%>','<%=bunji%>','<%=zipcodeno%>')"><%=b.getZipCode()%></a></td>
											<td height="20" style="padding-left: 25; width: 200px;"><a href="javascript:sendAddress('<%=zipcode%>','<%=sido%>','<%=gugun%>','<%=dong1%>','<%=bunji%>','<%=zipcodeno%>')"><%=b.getSido()%> </a></td>
											<td height="20" style="padding-left: 25; width: 200px;"><a href="javascript:sendAddress('<%=zipcode%>','<%=sido%>','<%=gugun%>','<%=dong1%>','<%=bunji%>','<%=zipcodeno%>')"><%=b.getGugun()%></a></td>
											<td height="20" style="padding-left: 25; width: 500px;"><a href="javascript:sendAddress('<%=zipcode%>','<%=sido%>','<%=gugun%>','<%=dong1%>','<%=bunji%>','<%=zipcodeno%>')"><%=b.getDong()%></a></td>
											<td height="20" style="padding-left: 25; width: 200px;"><a href="javascript:sendAddress('<%=zipcode%>','<%=sido%>','<%=gugun%>','<%=dong1%>','<%=bunji%>','<%=zipcodeno%>')"><%=b.getBunji()%></a></td>
																			
										</tr>
 	                                    <tr>
											<td height="20" style="padding-left: 25; width: 200px;">
											<a href="#"></a></td>
										</tr>
										<%
											}
											}
										%>

									

									</table>
								</div>
							</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>