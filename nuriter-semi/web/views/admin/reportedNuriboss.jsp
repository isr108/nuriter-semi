<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*,com.kh.nuriter.board.model.vo.*,com.kh.nuriter.notice.model.vo.*"%>
<% ArrayList<reportNuri> list = (ArrayList<reportNuri>)request.getAttribute("rlist");
PageInfo pi = (PageInfo)request.getAttribute("pi");
int listCount = pi.getListCount();
int currentPage = pi.getCurrentPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();



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
	/* background: red; */
	height: 800px;
	width: 60%;
	margin-left: auto;
	margin-right: 15%;
	float: right;
}

#web-font {
	font-family: 'Jua', sans-serif;
}

table tr th {
	text-align: center;
	border: 1px solid lightgray;
	height: 40px;
	background: rgb(241, 196, 15);
}

#reportBtn {
	padding-right: 30px;
	padding-bottom: 30px;
}

.listArea {
	width: 650px;
	height: 100px;
	margin-left: auto;
	margin-right: auto;
}

table tr td {
	text-align: center;
	border: 1px solid lightgray;
	height: 40px;
}

.pageArea {
	margin-top: 30%;
	height: 500px;
}

button {
	background: lightgray;
	border: none;
}


</style>
</head>
<body>
	<%@ include file="../common/logoAndLogbutton.jsp"%>
	<br>
	<br>
	<br>
	<%@ include file="adminbar.jsp"%>
	<div class="main" id="web-font">
		<h2>누리장 신고</h2>
		<div class="reportList">
			<div id="reportBtn" align="right">
				<button id="rBtn"
					style="width: 100px; height: 30px; background: #2E2E2E; color: white; border: 1px solid #E8DB1B;">신고
					접수</button>
			</div>
			<table id="listArea">
				<tr>
					<th width="50px"></th>
					<th width="200px">신고된 누리장</th>
					<th width="200px">신고 제목</th>
					<th width="500px">신고 사유</th>
					<th width="200px">신고자</th>
					<th width="200px">신고날짜</th>
				</tr>

				
				<% for(reportNuri r : list){ %>
				<tr class="testList">
					<td><input type="checkbox"></td>
					<td><%=r.getOwnerNickname()%></td>
					<td><%=r.getBoardTitle() %></td>
					<td><%=r.getBoardContent() %></td>
					<td><%=r.getNuriNickname() %></td>
					<td><%=r.getBoardDate() %></td>
				</tr>
				
				<% } %>
			</table>
		</div>
		<div class="pageArea" align="center">
			<button
				onclick="location.href='<%= request.getContextPath()%>/reportlist.rl?currentPage=1'"><<</button>
			<% if(currentPage <= 1){ %>
			<button disabled><</button>
			<% }else{ %>
			<button
				onclick="location.href='<%= request.getContextPath()%>/reportlist.rl?currentPage=<%=currentPage - 1%>'"><</button>
			<% } %>
			<% for(int p = startPage; p <= endPage; p++){
   				if(p == currentPage){	
   			%>
			<button disabled><%= p %></button>
			<%  }else{ %>
			<button
				onclick="location.href='<%= request.getContextPath()%>/reportlist.rl?currentPage=<%= p %>'"><%= p %></button>
			<%  } %>

			<% } %>

			<% if(currentPage >= maxPage){ %>
			<button disabled>></button>
			<% }else{ %>
			<button
				onclick="location.href='<%= request.getContextPath()%>/reportlist.rl?currentPage=<%= currentPage + 1%>'">></button>
			<% } %>
			<button
				onclick="location.href='<%= request.getContextPath()%>/reportlist.rl?currentPage=<%= maxPage %>'">>></button>
		</div>
	</div>
	
</body>
</html>