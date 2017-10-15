<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.ArrayList ,java.util.List"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>message</title>
	<style>
	body{background-image:url("image/bg1.png");}
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
	    <h1 style="text-align:center font-size:30px font-family:'楷体'">
	        <s:property value="Name" />
	    </h1>
		<h1 style="text-align:center">作品</h1>

		<table border="1" align="center">
			<%List<String> meg=(List<String>)session.getAttribute("meg2");
			for (int i=0; i<meg.size(); i+=2) {
			  	out.println("<tr align=\"center\"><td><a href=Detail?Isbn="+meg.get(i+1)+">"+meg.get(i)+"</a></td>");
			  	out.print("<td><a href=Delete?Isbn="+meg.get(i+1)+"><button type=\"button\" style=\"text-align:center; font-size:25px; font-family:'楷体'\">删除</button></a></td></tr>");
			}
			%>
		</table>

		<input type="button" value="返回主界面" onclick="window.location.href='index.jsp';" style="text-align:center; font-size:30px; font-family:'楷体'"/>
	</body>
</html>