<%@ page contentType="text/html;charset=Shift_JIS"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Bean.TopBean"%>
<%
	//Bean利用の指定タグ
%>
<jsp:useBean id="topBean" class="Bean.TopBean" scope="request" />

<%
	// PostメソッドでのServletデータ受け取り
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


	<!-- Postメソッド ID,name,code-->
	<%
		for (TopBean osi : str) {
	%>
	<table>
		<tr>
			<th>ID</th>
			<td><%=osi.getOsi2_id()%></td>
		</tr>
		<tr>
			<th>名前</th>
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

	<button type="button" onclick="history.back()">戻る</button>
	<a href="http://localhost:8082/Jpos/Top.jsp"><button type="button">編集画面へ</button></a>
</body>
</html>