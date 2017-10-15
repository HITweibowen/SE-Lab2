<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addAuthor</title>
<style>
body {
	background-image:url("image/bg5.png");
	background-repeat:no-repeat;
}
h1 {font-size:60px;}
</style>
</head>
<body style="text-align:center">
	<h1 style="text-align:center">作者不在库中，请添加作者</h1>
		<center>
		<s:form action="AddAuthor" style="font-size:30px; font-family:\"楷体\"">
		    <s:textfield name="Name" label="作者名" style="font-size:30px; font-family:\"楷体\""/>
		    <s:textfield name="Age" label="年龄" style="font-size:30px; font-family:\"楷体\""/>
		    <s:textfield name="Country" label="国家" style="font-size:30px; font-family:\"楷体\""/>
		    <s:submit value="添加" style="text-align:center; font-size:30px; font-family:\"楷体\""/>
		</s:form>
		</center>
</body>
</html>