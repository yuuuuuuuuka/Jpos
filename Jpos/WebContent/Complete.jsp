<%@ page contentType="text/html;charset=Shift_JIS"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Bean.TopBean"%>
<%
	//Bean���p�̎w��^�O
%>
<jsp:useBean id="topBean" class="Bean.TopBean" scope="request" />

<%
	// Post���\�b�h�ł�Servlet�f�[�^�󂯎��
	request.setCharacterEncoding("Shift_JIS");
	//request.getAttribute("fromServlet");
	java.util.List<TopBean> str = (java.util.List<TopBean>) request.getAttribute("fromServlet");
	//Integer strServlet = (Integer) request.getAttribute("fromServlet");//ID
	//String strServlet2 = (String) request.getAttribute("fromServletn");//name
	//String strServlet3 = (String) request.getAttribute("fromServletc");//code
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=" Shift_JIS" />
<title>test</title>
</head>
<body>


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