<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.List"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>allBook</title>
</head>
<style>
	body{background-image:url("image/bg6.png");}
	a {text-decoration:none;}
	table {
    border-collapse: collapse;
	}
	h1 {font-size:60px;}
	table, td, th {
	    border: 1px solid black;
	    text-align:center;
	    font-size:30px;
	    font-family:"楷体";
	}
	a {font-size:30px;}
	</style>
<body style="text-align:center">
	<h1 style="text-align:center">所有图书</h1>
		<table border="1" align="center">
		<tr>
			<th>Isbn</th>
			<th>书名</th>
			<th>作者ID</th>
			<th>出版社</th>
			<th>出版日期</th>
			<th>价格</th>
			<th></th>

		</tr>

			<%List<String> meg=(List<String>)session.getAttribute("meg1");
			for (int i=0; i<meg.size(); i+=6) {
				out.print("<td>"+meg.get(i)+"</td>");
				out.print("<td><a href=Detail?Isbn="+meg.get(i)+">"+meg.get(i+1)+"</a></td>");
				out.print("<td>"+meg.get(i+2)+"</td>");
				out.print("<td>"+meg.get(i+3)+"</td>");
				out.print("<td>"+meg.get(i+4)+"</td>");
				out.print("<td>"+meg.get(i+5)+"</td>");
			  	out.print("<td><a href=Delete?Isbn="+meg.get(i)+"><button type=\"button\" style=\"text-align:center; font-size:25px; font-family:'楷体'\">删除</button></a></td></tr>");
			}
			%>
		</table>

		<input type="button" value="返回主界面" onclick="window.location.href='index.jsp';" style="text-align:center; font-size:30px; font-family:'楷体'"/>

</body>
</html>