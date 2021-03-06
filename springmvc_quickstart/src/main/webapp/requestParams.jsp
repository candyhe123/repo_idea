<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/7/20
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--${pageContext.request.contextPath}动态获取当前的项目路径 springmvc_quickstart  a标签 get请求方式--%>
<a href="${pageContext.request.contextPath}/user/simpleParam?id=1&username=杰克">基本类型参数</a>

<%--form表单--%>
<form action="${pageContext.request.contextPath}/user/pojoParam" method="post">
    编号：<input type="text" name="id"><br>
    用户名：<input type="text" name="username">
    <input type="submit" value="对象类型参数">
</form>

<%--演示获取数组类型请求参数--%>
<form action="${pageContext.request.contextPath}/user/arrayParam" method="post">
    编号：<input type="checkbox" name="ids" value="1">1<br>
         <input type="checkbox" name="ids" value="2">2<br>
         <input type="checkbox" name="ids" value="3">3<br>
         <input type="checkbox" name="ids" value="4">4<br>

    <input type="submit" value="数组类型参数">
</form>

<%--演示获取集合类型请求参数--%>
<form action="${pageContext.request.contextPath}/user/queryParam" method="post">

    搜索关键字：
    <input type="text" name="keyword"><br>
    user对象：
    <input type="text" name="user.id" placeholder="编号">
    <input type="text" name="user.username" placeholder="姓名"><br>
    list集合：
        第一个元素：
        <input type="text" name="userList[0].id" placeholder="编号">
        <input type="text" name="userList[0].username" placeholder="姓名"><br>
        第二个元素：
        <input type="text" name="userList[1].id" placeholder="编号">
        <input type="text" name="userList[1].username" placeholder="姓名"><br>
    Map集合类型:
        第一个元素：
        <input type="text" name="userMap['u1'].id" placeholder="编号">
        <input type="text" name="userMap['u1'].username" placeholder="姓名"><br>
        第二个元素：
        <input type="text" name="userMap['u2'].id" placeholder="编号">
        <input type="text" name="userMap['u2'].username" placeholder="姓名"><br>

    <input type="submit" value="复杂类型参数">
</form>


<%--演示获取数组类型请求参数--%>
<%--演示自定义类型转换器 : 错误的产生  2012/12/12 --%>
<form action="${pageContext.request.contextPath}/user/converterParam" method="post">

    生日：<input type="text" name="birthday">
    <input type="submit" value="自定义类型转换器">
</form>

<%--演示@RequestParam--%>
<a href="${pageContext.request.contextPath}/user/findByPage?pageNo=2">
    分页查询
</a>

<%--引入jq--%>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>


</body>
</html>
