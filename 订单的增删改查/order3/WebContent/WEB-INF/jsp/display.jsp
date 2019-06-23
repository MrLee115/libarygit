<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<table border="2" cellspacing="0">
		<thead>
			<tr>
				<th>编号</th>
				<th>价格</th>
				<th>用户</th>
				<th>时间</th>
				<th>操作一</th>
				<th>操作二</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ orders }" var="order">
				<tr>
					<td>${ order.id }</td>
					<td>${ order.price }</td>
					<td>${ order.user.name }</td>
					<td>${ order.orderTime }</td>
					<td><a href="delete?id=${ order.id }">删除</a></td>
					<td><a href="modify?id=${ order.id }">修改</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="add">新增订单</a>
</body>
</html>