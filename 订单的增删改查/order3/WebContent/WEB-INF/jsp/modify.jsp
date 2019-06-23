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
	<form action="modify" method="post">
		<input type="hidden" name="id" value="${ order.id }" />
		价格<input name="price" value ="${ order.price }"/> <br />
		用户
		<select name="userId">
			<c:forEach items="${ users }" var="user">
				<option value="${ user.id }">${ user.name }</option>
			</c:forEach>
		</select>
		<input type="submit" value="提交" />
	</form>
</body>
</html>