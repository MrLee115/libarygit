<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="add" method="post">
		价格<input name="price" /> <br />
		用户
		<select name="userId">
			<c:forEach items="${ users }" var="user">
				<option value="${ user.id }">${ user.name }</option>
			</c:forEach>
		</select>
		<input type="submit" value="提交" />
	</form>
	<a href="display">查看所有订单</a>
</body>
</html>