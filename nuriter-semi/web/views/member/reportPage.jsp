<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.main{
		/* background:red */;
	/* 	border:3px solid black; */
		margin-top:15%;
		height:100px;
		width:60%;
		margin-left:auto;
		margin-right:auto;
		
	}
	#child {
		overflow:hidden;
		margin-left:auto;
		margin-right:auto;
		margin-top:5%;
		
	}
	#web-font {
	font-family: 'Jua', sans-serif;
}
</style>
</head>
<body>
	<%@include file="../common/logoAndLogbutton.jsp"%>
	<%@include file="../common/categorybar.jsp" %>
	<%@include file="../member/myPage_left.jsp" %>
	<div class="main" id="web-font">
	<table>
		<tr>
			<td>이름 </td>
		</tr>
		<tr>
		<td><input type="text" width="100px;"height="50px;"></td>
		</tr>
		<tr>
			<td>신고할 사람 </td>
		</tr>
		<tr>
		<td><input type="text" width="100px;"height="50px;"></td>
		</tr>
		<tr>
			<td>제목</td>
		</tr>
		<tr>
		<td><input type="text" width="100px;"height="50px;"></td>
		</tr>
	</table>
		<div id="child">
			<%@include file="../common/summernote_write.jsp" %>
		</div>
	</div>
</body>
</html>