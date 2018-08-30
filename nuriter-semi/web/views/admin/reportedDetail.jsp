<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.nuriter.board.model.vo.*"%>
<%
	reportNuri rn = (reportNuri)request.getAttribute("rn");
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
.main {
	float: right;
	width: 70%;
	height: 800px;
	/* background:red; */
	margin-right: 150px;
}

.tableArea {
	margin-top: 30px;
	margin-left: auto;
	margin-right: auto;
	background:black;
	width: 80%;
	height: 500px;
}
table tr td {
	text-align: center;
	height: 40px;
}
#web-font {
	font-family: 'Jua', sans-serif;
}
#reportBtn{
	margin-right:auto;
	margin-left:auto;
	background:red;
	height:30px;
	width:150px;
	margin-top:15px;
}
button{
	padding-right: 30px;
	padding-left:30px;
	background:rgb(241, 196, 15);
	
	
	
}
</style>
</head>
<body>
	<%@ include file="../common/logoAndLogbutton.jsp"%>
	<br>
	<br>
	<br>

	<%@ include file="../admin/adminbar.jsp"%>
	<div class="main" id="web-font">
		<div id="titleBox" align="center">
			<h2>누리장 신고 상세보기</h2>
		</div>
		<div class="tableArea">
			<table>
				<tr>
					<td colspan="5">신고제목<input type="text" size="50" name="title"
						value="<%=rn.getBoardTitle()%>"></td>
				</tr>
				<tr>
					<td>boardnum <input type="text" value="<%=rn.getBoardNum()%>"></td>
					<td>신고자  <input type="text" value="<%=rn.getNuriNickname() %>"></td>
					<td>신고된 누리장 <input type="text" value="<%=rn.getOwnerNickname()%>"></td>
					<td>신고된 날짜 <input type="text" value="<%=rn.getBoardDate()%>"></td>
				</tr>
				<tr>
					<td>내용</td>
				</tr>
				<tr>
					<td colspan="4"><textarea name="content" cols="100" rows="15"
							style="resize: none" readonly><%= rn.getBoardContent()%></textarea></td>
				</tr>
			</table>
				<div id="reportBtn">
					<button onclick="location.href='<%=request.getContextPath()%>/reportapprove.rp?num=<%=rn.getBoardNum()%>'">승인하기</button>
				</div>
		</div>

	</div>
</body>
</html>