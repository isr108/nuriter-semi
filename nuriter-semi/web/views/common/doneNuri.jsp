<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width:900px;
		height:500px;
		background:white;
		color:lightblack;
		margin-top:1%;
		margin-left:auto;
		margin-right:auto;
		/* margin-top:280px; */
	}
	h2{
	font-family: 'Jua', sans-serif;
	}
	table {
		border:1px solid gray;
		text-align:center;
		font-family: 'Jua', sans-serif;
	}
	.tableArea {
		width:650px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
	}
	.searchArea {
		width:650px;
		margin-left:auto;
		margin-right:auto;
	}
	table tr th{
	text-align:center;
	}

</style>
</head>
<body>
	<%@ include file="/views/common/logoAndLogbutton.jsp" %>
	 <%@ include file="/views/common/categorybar.jsp" %>
 	<%@ include file="/views/common/myPage_left.jsp" %>
	<%@ include file="/views/common/myNuriList.jsp" %>
	<div class="outer">
		<br>
		<h2 align="center">종료된 누리터</h2>
		<div class="tableArea">
			<table id="listArea">
				<tr>
					<th width="250px">누리터번호</th>
					<th width="150px">누리장</th>
					<th width="300px">누리터명</th>
					<th width="200px">시작일시</th>
					<th width="200px">종료일시</th>
					<th width="200px">장소</th>
					<th width="100px">참가비</th>
					<th width="200px">신청일자</th>
				</tr>
				<%-- 기능구현시 적용시킬 것
				 <% for(Board b : list){ %>
				<tr>
					<input type="hidden" value="<%= b.getBid()%>">
					<td><%= b.getBno() %></td>
					<td><%= b.getCategory() %></td>
					<td><%= b.getbTitle() %></td>
					<td><%= b.getbWriter() %></td>
					<td><%= b.getbCount() %></td>
					<td><%= b.getbDate() %></td>
				</tr>
				<% } %> --%>
			</table>
		</div>
	</div>
</body>
</html>