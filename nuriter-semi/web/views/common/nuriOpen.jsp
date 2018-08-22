<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.nuriter.nuriter.model.vo.*"%>
 <% 
	ArrayList<Nuriter> list = (ArrayList<Nuriter>)request.getAttribute("list");
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
		<h2 align="center">개설중인 누리터</h2>
		<div class="tableArea">
			<table id="listArea">
				<tr>
					<!-- <th width="250px">누리터번호</th> -->
					<!-- <th width="150px">누리장</th> -->
					<th width="300px">누리터명</th>
					<th width="200px">시작일시</th>
					<th width="200px">종료일시</th>
					<th width="200px">장소</th>
					<th width="100px">참가비</th>
					<th width="200px">개설일자</th>
				</tr>
				
				 <% for(Nuriter n : list){ %>
				<tr>
					<input type="hidden" value="<%= n.getNuriNum()%>">
					<td><%=n.getNuriTitle()%></td>
					<td><%=n.getStartDate()%></td>
					<td><%=n.getEndDate()%></td>
					<td><%=n.getPlace()%></td>
					<td><%=n.getPrice()%></td>
					<td><%=n.getApplicationDate()%></td>
				</tr>
				<% } %>
			</table>
		</div>
			<!-- 페이지처리 -->
   		<div class="pageArea" align="center">
   			<button onclick="location.href='<%= request.getContextPath()%>/selectList.no?currentPage=1'"><<</button>
   			<% if(currentPage <= 1){ %>
   			<button disabled><</button>
   			<% }else{ %>
   			<button onclick="location.href='<%= request.getContextPath()%>/selectList.no?currentPage=<%=currentPage - 1%>'"><</button>
   			<% } %>
   			<% for(int p = startPage; p <= endPage; p++){
   				if(p == currentPage){	
   			%>
   				<button disabled><%= p %></button>
   			<%  }else{ %>
   				<button onclick="location.href='<%= request.getContextPath()%>/selectList.no?currentPage=<%= p %>'"><%= p %></button>
   			<%  } %>
   			
   			<% } %>
   			
   			<% if(currentPage >= maxPage){ %>
   				<button disabled>></button>
   			<% }else{ %>
   				<button onclick="location.href='<%= request.getContextPath()%>/selectList.no?currentPage=<%= currentPage + 1%>'">></button>
   			<% } %>
   				<button onclick="location.href='<%= request.getContextPath()%>/selectList.no?currentPage=<%= maxPage %>'">>></button>
   		</div>
		</div>

   	<%@ include file="../common/footer.jsp" %>
</body>
</html>