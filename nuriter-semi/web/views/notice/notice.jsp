<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.nuriter.notice.model.vo.*"%>
<% ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
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

	#main{
   	/* width:170%; */
   	border:1px solid white;
   	min-height:90%:
   }
   
   #web-font{
      font-family: 'Jua', sans-serif;
   } 

	.colorgraph {
      width: 98%;
        height: 3px;
        border-top: 0;
        background: rgb(241, 196, 15);
        border-radius: 3px;
   }


	#showLeft{
     /*  border-style: solid; */
       /* border-color: red; */
       float:left;
       width:10%;
      /*  height:15%; */
       font-size:20px;
       display: inline-block;
   }
   
   ul.navi2 li a {
      float: center;
      font-size: 15px;
      line-height: 10px;
      color: #000000;
      text-decoration: none;
       /* margin: auto;  */
      /* padding: 0 30px; */
      -moz-border-radius-topright: 10px;
      -webkit-border-top-right-radius: 10px;
      -moz-border-radius-topleft: 10px;
      -webkit-border-top-left-radius: 10px;
   }
   
   #notice{
   	border:1px solid blue;
   	width:40%;
   	margin-left:auto;
   	margin-right:auto;
   	width: 1080px;
   	min-height: 935px;
   }
   
   #upBox{
   	border:1px solid white;
   	width:100%;
   	height:50px;
   }
   
   #upBox > label {
    font-size:20px;
   	float: left;
   }
   
   #btnBox{
     border:1px solid white;
     width:30%;
     height:40px;
     float:right;
   }
   
   #btnBox > input{
    /* display:table-cell; */
   	width: 100px;
    height: 40px;
   	font-size: 16px;
   	text-align: center;
   	line-height: 2.5em;
   	border-top-left-radius: 4px;
   	border-top-right-radius: 4px;
   	border-bottom-right-radius: 4px;
    border-bottom-left-radius: 4px;
    background-color: rgb(224, 224, 224);
   }
   
   #noticeList{
     border:1px solid white;
     width:100%;
     height:480px;
   }
   
   table {
    margin-bottom: 20px;
   }
   
   table tr th{
    background: #eaeaea;
   	text-align:center;
   	height:50px;
   }
   
   table tr td{
    text-align:center;
   	height:50px;
   }
   
   #noticeUpdate{
     border:1px solid white;
     width:100%;
     height:410px;
   }
   
   #noticeUpdate > input[type='text']{
    margin-top: 10px;
   	width:100%;
   }
   
   #noticeUpdate > textarea{
    width:100%;
    height:300px;
    margin-top: 20px;
   }
   
   #noticeUpdate input[type='button']{
   	width: 100px;
    height: 40px;
    float:right;
    margin-top: 5px;
    margin-right: 10px;
    
   }
   
</style>
</head>
<body>
	<%@ include file="../common/logoAndLogbutton.jsp" %>
	
<div id="main">
 <br><br> <br><br>
    <hr class="colorgraph">
    
	<div id="showLeft" >
     <ul class="navi2" style="list-style-type:none">
        <hr class="colorgraph">
        <li id="web-font"><a href="#">공지사항</a></li>
        <hr class="colorgraph">
        
     </ul>
   	</div>
   	
   	<div id="notice" align="center">
   		<div id="upBox" align="center">
   			<label>공지사항</label>
   			<div id="btnBox">
   			
   			<% if(loginUser != null 
			     && loginUser.getUserEmail().equals("admin")){ %>
			     
   			  <button onclick="location.href='views/notice/noticeInsertForm.jsp'">작성하기</button>
   			  
   			<% } %>
   			
   			</div>
   		</div>
   	
   		<div id="noticeList">
   			<table border="1" width="100%" height="40%" id="listArea">
   				<tr>
					<th width="10%">글번호</th>
					<th width="35%">글제목</th>
					<th width="15%">작성자</th>
					<th width="10%">조회수</th>
					<th width="30%">작성일</th>
   				</tr>
   				<% for(Notice n : list){ %>
				<tr>
					<input type="hidden" value="<%= n.getbNumber()%>">
					<td><%= n.getbNumber() %></td>
					<td><%= n.getbTitle() %></td>
					<td><%= n.getUserNumber() %></td>
					<td><%= n.getbCount() %></td>
					<td><%= n.getbDate() %></td>
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
</div>

	<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				var num = $(this).parent().children("input").val();
				console.log(num);
				location.href="<%= request.getContextPath()%>/selectOne.no?num=" + num;
			});
		});
	</script>

   	<%@ include file="../common/footer.jsp" %>
</body>
</html>