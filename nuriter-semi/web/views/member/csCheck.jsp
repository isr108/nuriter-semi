<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#web-font{
      font-family: 'Jua', sans-serif;
   }
   .outer1{
   		/* border-color: red; 
   	  	display:inline-block; */
		width:800px;
		height:500px;
		/* background:black;
		color:white; */
		margin-left:20%;
		margin-right:auto;
		margin-top:30px;
		
	}
	table {
		border:1px solid black;
		text-align:center;
	}
	.tableArea{
		width:700px;
		height:100px;
		margin-left:auto;
		margin-right:auto;
	}
	.searchArea {
		width:650px;
		margin-left:auto;
		margin-right:auto;
	}
	
	.colorgraph {
      width: 98%;
        height: 3px;
        border-top: 0;
        background: rgb(241, 196, 15);
        border-radius: 3px;
   }
   h2{
   		margin-left:1%;
   }
</style>
</head>
<body><font id="web-font">
<%@ include file="../common/logoAndLogbutton.jsp" %>
    
    
    <%-- <%@ include file="../common/categorybar.jsp" %>
    
    <%@ include file="myPage_left.jsp" %> --%>
   
   <br><br><br>
   <hr class="colorgraph">
    
   <h2>출석체크</h2> 
   
    <div class="outer1">
    	<br>

    <div class="tableArea">
    <h3 align="left">참여중인 누리터</h3> 
			<table align="center" id="listArea">
				<tr>
					<th width="50px">체크</th>
					<th width="100px">누리터 번호</th>
					<th width="300px">누리터 제목</th>
					<th width="100px">누리장</th>
					<!-- <th>조회수</th> -->
					<th width="100px">날짜</th>
				</tr>
				<tr onclick="location.href='<%=request.getContextPath()%>/views/member/csCheckone.jsp'">
				<td></td>
					<td>1</td>
					<td>축구하실분</td>
					<td>이선생</td>
					<td>8/21~8/31</td>
				</tr>
				<%-- <% for(Notice n : list){ %>
				<tr>
					<td><%= n.getNno() %></td>
					<td><%= n.getnTitle() %></td>
					<td><%= n.getnWriter() %></td>
					<td><%= n.getnCount() %></td>
					<td><%= n.getnDate() %></td>
				</tr>
				<% } %> --%>
			</table>
		</div>	
		
		<div class="tableArea">
    <h3 align="left">개설중인 누리터</h3> 
			<table align="center" id="listArea">
				<tr>
					<th width="50px">체크</th>
					<th width="100px">누리터 번호</th>
					<th width="300px">누리터 제목</th>
					<th width="100px">누리장</th>
					<!-- <th>조회수</th> -->
					<th width="100px">날짜</th>
				</tr>
				<tr onclick="location.href='<%=request.getContextPath()%>/views/member/csCheckjang.jsp'">
				<td></td>
					<td>1</td>
					<td>축구하실분</td>
					<td>이선생</td>
					<td>8/21~8/31</td>
				</tr>
				<%-- <% for(Notice n : list){ %>
				<tr>
					<td><%= n.getNno() %></td>
					<td><%= n.getnTitle() %></td>
					<td><%= n.getnWriter() %></td>
					<td><%= n.getnCount() %></td>
					<td><%= n.getnDate() %></td>
				</tr>
				<% } %> --%>
			</table>
		</div>
		<%-- <div class="searchArea" align="center">
			<select id="searchCondition" name="searchCondition">
				<option>---</option>
				<option value="writer">작성자</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
			<input type="search">
			<button type="submit">검색하기</button>
			<% if(loginUser != null ){ %>
				<button onclick="location.href='views/notice/noticeInsertForm.jsp'">메세지 작성</button>
			
			<% } %>
		</div> --%>
	</div>
	<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"black"});
			}).click(function(){
				//console.log($(this).parent().children().eq(0).text());
				var num = $(this).parent().children().eq(0).text();
				location.href="<%=request.getContextPath()%>/selectOne.no?num=" + num;
			
			});
			
		});
	</script>
	
 
 </font>   
</body>
</html>