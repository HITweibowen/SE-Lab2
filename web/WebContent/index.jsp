<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.LinkedList,java.util.List"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<style>
body {
	background-image:url("image/bg1.png");
    margin:0;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 20%;
    background-color: #f1f1f1;
    position: fixed;
    height: 100%;
    overflow: auto;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
    margin:25px;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
li a {font-size:40px; font-family: "楷体";}
li a:hover {color: red; text-decoration:underline;}
h1 {font-size:60px; font-family:"楷体";}
h2 {font-size:40px; font-family:"楷体";}
h3 {font-size:30px; font-family:"楷体";}
h4 {font-size:20px; font-family:"楷体";}
h5 {font-size:10px; font-family:"楷体";}
.hidden {visibility:hidden;}
</style>
</head>
<body>

<ul>
  <li style="font-size:50px; font-family: '楷体'">主页</li>
  <li><a class="active" href="search.jsp">查询</a></li>
  <li><a class="active" href="addBook.jsp">添加</a></li>
  <li><a class="active" href="upDate.jsp">更新</a></li>
  <li><a class="active" href="AllBook">所有图书</a></li>
  <li><a class="active" href="AllAuthor">所有作者</a></li>
</ul>

<div style="margin-left:25%;padding:1px 16px;height:1000px;">
  <h1 style="text-align:center">欢迎使用图书馆管理系统</h1>
  <h2 style="text-align:center">本系统介绍</h2>
  <h3 style="text-align:center">1.系统拥有查询图书、添加图书、删除图书、更新图书、展示图书详情等功能 </h3>
  <h3 class="hidden" style="text-align:center">2. </h3>
  <h3 class="hidden" style="text-align:center">3. </h3>
  <h3 class="hidden" style="text-align:center">4. </h3>
  <h3 class="hidden" style="text-align:center">5. </h3>
  <h3 class="hidden" style="text-align:center">6. </h3>
  <h3 style="text-align:center">作者联系方式:</h3>
  <h4 style="text-align:center">电话:18845895363  邮箱:hitweibowen@163.com</h4>
  <h5 style="text-align:center">Copyright [2017-10-8] by [魏博文] </h5>

</div>
</body>
</html>
