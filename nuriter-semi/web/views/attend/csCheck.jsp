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
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
   #listArea{
	align:center;
	}
	
	.pageArea{
	padding-left:20%;
	}
</style>
</head>
<body><font id="web-font">
<%@ include file="../common/logoAndLogbutton.jsp" %>
  
    <%-- <%@ include file="../common/categorybar.jsp" %>--%>

   <br><br><br>
   <hr class="colorgraph">
   
   <%@ include file="myPage_left.jsp" %>
    
   <h2>출석체크</h2> 
   
    <div class="outer1">
    <br>

    <div class="tableArea">
    <h3 align="left">참여중인 누리터</h3> 
			<table align="center" id="listArea1">
				<tr>
					<th><div style="width:150px; text-align:center;">누리터명</div></th>
					<th><div style="width:100px; text-align:center;">시작일시</div></th>
					<th><div style="width:100px; text-align:center;">종료일시</div></th>
					<th><div style="width:300px; text-align:center;">장소</div></th>
					<th><div style="width:50px; text-align:center;">참가비</div></th>
					<th><div style="width:100px; text-align:center;">개설일자</div></th>
				</tr>
				<%-- <tr onclick="location.href='<%=request.getContextPath()%>/views/attend/csCheckone.jsp'"> --%>
				 <% for(Nuriter n : list){ %>
				<tr>
					<%-- <input type="hidden" value="<%= n.getOwnerNum()%>">
					<td onclick="location.href='<%=request.getContextPath()%>/attendonedeteil.nu'">
					<div class="content"><%=n.getNuriTitle()%></div></td>
					<td><div class="content"><%=n.getStartDate()%></div></td>
					<td><div class="content"><%=n.getEndDate()%></div></td>
					<td><div class="content"><%=n.getPlace()%></div></td>
					<td><div class="content"><%=n.getPrice()%></div></td>
					<td><div class="content"><%=n.getApplicationDate()%></div></td> --%>
				</tr>
				<% } %>
			</table>
		</div>	
		
		<div class="tableArea">
    <h3 align="left">개설중인 누리터</h3> 
			<table align="center" id="listArea">
				<tr>
					<th width="150px">누리터명</th>
					<th width="150px">시작일시</th>
					<th width="150px">종료일시</th>
					<th width="150px">장소</th>
					<th width="150px">참가비</th>
					<th width="150px">개설일자</th>
				</tr>
				<% for(Nuriter n : list){ %>
				<tr>
					<input type="hidden" value="<%=n.getNuriNum()%>">
					<td><%=n.getNuriTitle()%></td>
					<td><%=n.getStartDate()%></td>
					<td><%=n.getEndDate()%></td>
					<td><%=n.getPlace()%></td>
					<td><%=n.getPrice()%></td>
					<td><%=n.getApplicationDate()%></td>
				</tr>
				<% } %>
			</table>
			<%-- <div class="pageArea" align="center">
   			<button onclick="location.href='<%= request.getContextPath()%>/selectNuriOpenList.nu?currentPage=1'"><<</button>
   			<% if(currentPage <= 1){ %>
   			<button disabled><</button>
   			<% }else{ %>
   			<button onclick="location.href='<%= request.getContextPath()%>/selectNuriOpenList.nu?currentPage=<%=currentPage - 1%>'"><</button>
   			<% } %>
   			<% for(int p = startPage; p <= endPage; p++){
   				if(p == currentPage){	
   			%>
   				<button disabled><%= p %></button>
   			<%  }else{ %>
   				<button onclick="location.href='<%= request.getContextPath()%>/selectNuriOpenList.nu?currentPage=<%= p %>'"><%= p %></button>
   			<%  } %>
   			
   			<% } %>
   			
   			<% if(currentPage >= maxPage){ %>
   				<button disabled>></button>
   			<% }else{ %>
   				<button onclick="location.href='<%= request.getContextPath()%>/selectNuriOpenList?currentPage=<%= currentPage + 1%>'">></button>
   			<% } %>
   				<button onclick="location.href='<%= request.getContextPath()%>/selectNuriOpenList?currentPage=<%= maxPage %>'">>></button>
   		</div> --%>
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
			$("#listArea1 td").mouseenter(function(){
				$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				console.log($(this).parent().children().eq(0).text());
				var num = $(this).parent().children().eq(0).val();
				location.href="<%=request.getContextPath()%>/attendcheckdeteiljang.nu?num=" + num;
				
			
			});
			
		
			
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				console.log($(this).parent().children().eq(0).val());
				var nunum = $(this).parent().children().eq(0).val();
				location.href="<%=request.getContextPath()%>/attendcheckdeteiljang.nu?nunum=" + nunum;
				
			
			});
			
		});
	</script>
	
 
 </font>   
</body>
</html>