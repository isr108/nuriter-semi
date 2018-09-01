<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.nuriter.nuriter.model.vo.PageInfo, com.kh.nuriter.member.model.vo.*"%>
 <% 
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
 	System.out.println("list출력  : " + list);
 	PageInfo pi = (PageInfo)request.getAttribute("pi");
 	System.out.println("pi출력 : " + pi);
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
	
		width:850px;
		height:auto;
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
		width:auto;
		height:auto;
	}
	.tableArea {
		width:650px;
		height:auto;
		margin-left:5%;
		margin-right:auto;
	}
	.searchArea {
		width:650px;
		margin-left:auto;
		margin-right:auto;
	}
	table tr th{
	text-align:center;
	/* width:auto;
	height:auto; */
	}
	
	table td td{
	width:auto;
	}
	
	.content{
	padding-left:15px;
	padding-right:15px;
	white-space:nowrap;
	} 

	#listArea{
	align:center;
	}
	
	/* .pageArea{
	padding-left:20%;
	} */
	
	tbody{
		width:auto;
		height:auto;
	}
	
	 .pagination {
  		display:inline-blick;
	    /* width:400px;
	    height:60px;
	    overflow:hidden; */
	    padding-left: 50%;
	    margin: 20px 0;
	    boder-radius:4px;
	    pointer: cursor;
	    align:center;
	}

	.pagination a {
	    color: black;
	    padding: 8px 16px;
	    text-decoration: none;
	    border: 1px solid #ddd;
	    pointer: cursor;
	}
	.pagination a.active {
	    background-color: rgb(241, 196, 15);
	    color: white;
	    border: 1px solid rgb(241, 196, 15);
	    pointer: cursor;
	}
	.pagination a:hover:not(.active) {
		background-color: #ddd;
		pointer: cursor;
	}

	.pagination a:first-child {
	    border-top-left-radius: 5px;
	    border-bottom-left-radius: 5px;
	    pointer: cursor;
	}

	.pagination a:last-child {
	    border-top-right-radius: 5px;
	    border-bottom-right-radius: 5px;
	    pointer: cursor;
	


</style>
</head>
<body>
<%@ include file="../common/logoAndLogbutton.jsp"%>
	<div class="outer">
<%@ include file="adminbar.jsp"%>	



		<br>
		<h2 align="center">탈퇴 회원 목록</h2>
		<div class="tableArea" align="center">
			<table id="listArea">
				<tbody>
				<tr>
					<!-- <th width="250px">누리터번호</th> -->
					<!-- <th width="150px">누리장</th> -->
					<th><div style="width:100px">회원번호</div></th>
					<!-- <th><div style="width:100px">누리장명</div></th> -->
					<th><div style="width:200px">아이디</div></th>
					<th><div style="width:100px">이름</div></th>
					<th><div style="width:200px">닉네임</div></th>
					<th><div style="width:400px">주소</div></th>
					<th><div style="width:100px">연락처</div></th>
					<th><div style="width:100px">가입일</div></th>
					<th><div style="width:100px">탈퇴일</div></th>
				</tr>
				
				 <% for(Member m : list){ %>
				<tr>
					
					<td><div class="content"><%=m.getUserNumber()%></div>
					<%-- <td><div class="content"><%=n.getOwnerNum()%></div></td> --%>
					<td><div class="content"><%=m.getUserEmail()%></div></td>
					<td><div class="content"><%=m.getUserName()%></div></td>
					<td><div class="content"><%=m.getNickName()%></div></td>
					<td><div class="content"><%=m.getAddress()%></div></td>
					<td><div class="content"><%=m.getPhone()%></div></td>
					<td><div class="content"><%=m.getEnrollDate()%></div></td>
					<td><div class="content"><%=m.getActivatedDate()%></div></td>
					<!-- <td><div class="content"><input type="button" value="환불신청" onclick="doRefund();"></div></td> -->
				</tr>
				<% } %>
				</tbody>
			</table>
			<br>
			<br>
			<!-- 페이지처리 -->
			<!-- <div class="pageArea" align="center"> -->
			<div class="pagination" align="center" id="web-font">
   			<br>
   			<a href="location.href='<%= request.getContextPath()%>/selectGoneMemberList.ad?currentPage=1'"><<</a>
   			<% if(currentPage <= 1){ %>
   			<a disabled><</a>
   			<% }else{ %>
   			<a onclick="location.href='<%= request.getContextPath()%>/selectGoneMemberList.ad?currentPage=<%=currentPage - 1%>'">&laquo;</a>
   			<% } %>
   			<% for(int p = startPage; p <= endPage; p++){
   				if(p == currentPage){	
   			%>
   				<a class="active" disabled><%= p %></a>
   			<%  }else{ %>
   				<a onclick="location.href='<%= request.getContextPath()%>/selectGoneMemberList.ad?currentPage=<%= p %>'"><%= p %></a>
   			<%  } %>
   			
   			<% } %>
   			
   			<% if(currentPage >= maxPage){ %>
   				<a disabled>></a>
   			<% }else{ %>
   				<a onclick="location.href='<%= request.getContextPath()%>/selectGoneMemberList.ad?currentPage=<%= currentPage + 1%>'">></a>
   			<% } %>
   				<a onclick="location.href='<%= request.getContextPath()%>/selectGoneMemberList.ad?currentPage=<%= maxPage %>'">>></a>
   		</div>
		</div>
			
   		

		</div>
   	

</body>
</html>