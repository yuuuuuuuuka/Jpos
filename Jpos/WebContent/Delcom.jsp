<%@ page contentType="text/html;charset=Shift_JIS"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Bean.TopBean"%>

<%
	// Post���\�b�h�ł�Servlet�f�[�^�󂯎��
	request.setCharacterEncoding("Shift_JIS");
	java.util.List<TopBean> str = (java.util.List<TopBean>) request.getAttribute("Dele2");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=" Shift_JIS" />
<title>test2</title>
</head>
<body>
	<p>�폜���������܂����B</p>
	<!-- Post���\�b�h ID,name,code-->
	<%
		for (TopBean osi : str) {
	%>
	<table>
		<tr>
			<th>ID</th>
			<td><%=osi.getOsi2_id()%></td>
		</tr>
		<tr>
			<th>���O</th>
			<td><%=osi.getOsi2_name()%></td>
		</tr>
		<tr>
			<th>CODE</th>
			<td><%=osi.getOsi2_code()%></td>
			<%
				}
			%>
		</tr>
	</table>

	<button type="button" onclick="history.back()">�߂�</button>
	<a href="http://localhost:8082/Jpos/Top.jsp"><button type="button">�ҏW��ʂ�</button></a>

</body>
</html>