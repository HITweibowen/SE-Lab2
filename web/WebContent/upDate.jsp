<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
<style>
body {
	background-image:url("image/bg5.png");
	background-repeat:no-repeat;
}
h1 {font-size:60px;}
</style>
</head>
<body style="text-align:center">
	<h1 style="text-align:center">更新图书</h1>
			<center>
		    <s:form action="UpDate" style="font-size:30px; font-family:\"楷体\"">
		        <s:textfield name="Title" label="书名" style="font-size:30px; font-family:\"楷体\""/>
		        <s:textfield name="Name" label="作者名" style="font-size:30px; font-family:\"楷体\""/>
		        <s:textfield name="Publisher" label="出版社" style="font-size:30px; font-family:\"楷体\""/>
		        <s:textfield name="PublishDate" label="出版日期" style="font-size:30px; font-family:\"楷体\""/>
		        <s:textfield name="Price" label="价格" style="font-size:30px; font-family:\"楷体\""/>
		        <s:submit value="更新" style="text-align:center; font-size:25px; font-family:\"楷体\""/>
		    </s:form>
			</center>
</body>
</html>