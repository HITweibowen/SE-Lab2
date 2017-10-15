<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.List"
    pageEncoding="utf-8"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>detail</title>
	<style>
	body{background-image:url("image/bg6.png");}
	a {text-decoration:none;}
	table {
    border-collapse: collapse;
	}

	table, td, th {
	    border: 1px solid black;
	    text-align:center;
	    font-size:30px;
	    font-family:"楷体";
	}
	a {font-size:30px;}
	</style>
	</head>
	<body style="text-align:center">

		<h1 style="text-align:center">书籍详细信息</h1>
		<table border="1" align="center">
			<tr>
			    <th>ISBN</th>
			    <th>书名</th>
			    <th>作者ID</th>
			    <th>出版社</th>
			    <th>出版日期</th>
			    <th>价格</th>
			</tr>
			<tr>
			    <%List<String> meg1=(List<String>)session.getAttribute("meg1");
					out.print("<td align=\"center\">"+meg1.get(0)+"</td>");
					out.print("<td align=\"center\">"+meg1.get(1)+"</td>");
					out.print("<td align=\"center\">"+meg1.get(2)+"</td>");
					out.print("<td align=\"center\">"+meg1.get(3)+"</td>");
					out.print("<td align=\"center\">"+meg1.get(4)+"</td>");
					out.print("<td align=\"center\">"+meg1.get(5)+"</td>");%>
			</tr>
		</table>

		<h1 style="text-align:center">作者详细信息</h1>
		<table border="1" align="center">
			<tr>
				<th>作者ID</th>
			    <th>姓名</th>
			    <th>年龄</th>
			    <th>国家</th>
			</tr>
			<tr>
			    <%List<String> meg2=(List<String>)session.getAttribute("meg2");
					out.print("<td align=\"center\">"+meg2.get(0)+"</td>");
					out.print("<td align=\"center\">"+meg2.get(1)+"</td>");
					out.print("<td align=\"center\">"+meg2.get(2)+"</td>");
					out.print("<td align=\"center\">"+meg2.get(3)+"</td>");%>
			</tr>
		</table>

		<a href="index.jsp"><button type="button" style="text-align:center; font-size:30px; font-family:'楷体'">返回主页</button></a>
	</body>
</html>