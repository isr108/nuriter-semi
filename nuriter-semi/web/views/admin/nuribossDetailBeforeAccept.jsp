<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.nuriter.nuriter.model.vo.*"%>
<%@ Nuriboss nb = (Nuriboss)request.getAttribute("nb")%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../common/logoAndLogbutton.jsp"%>
<div id="main1">
	<%@ include file="adminbar.jsp"%>
	
	<div id="main" align="center">
		<table border="2" width="100%" id="web-font" class="listBox">
			<tr>
				<th width="400px">신청일자</th>
				<th width="400px">이름</th>
				<th width="400px">카테고리</th>
				<th width="400px">활동 계획서</th>
			</tr>
			
		</table>
	</div>
</div>
</body>
</html>