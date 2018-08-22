<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<title>Insert title here</title>
<style>
	#main {
		 /* margin-top: 190px; */
    	/* margin-left: 210px; */
   		 margin-right: 19%;
   		 float: right;
    	overflow: hidden;
	}
	#child {
		width:900px;
    	overflow:hidden;
    	/* border-style: solid;
    	border-color: hotpink; */
	}
	#child2 {
		 width:800px;
    	 margin-left:auto;
		 margin-right:auto;
		 overflow:hidden;
		 /* border-style: solid;
    	 border-color: hotpink; */
	}
	#child3 {
		 width:800px;
    	 margin-left:auto;
		 margin-right:auto;
		 overflow:hidden;
		 /* border-style: solid;
    	 border-color: hotpink; */
	}
	#web-font{
      	font-family: 'Jua', sans-serif;
   	}
   	#submit > button {
   		width:150px;
   	}
   	.pagination {
	    width:400px;
	    height:auto;
	    overflow:hidden;/* 
	    border-style: solid;
    	border-color: hotpink; */
	}
	.pagination a {
	    color: black;
	    padding: 8px 16px;
	    text-decoration: none;
	    border: 1px solid #ddd;
	}
	.pagination a.active {
	    background-color: rgb(241, 196, 15);
	    color: white;
	    border: 1px solid rgb(241, 196, 15);
	}
	.pagination a:hover:not(.active) {
		background-color: #ddd;
	}

	.pagination a:first-child {
	    border-top-left-radius: 5px;
	    border-bottom-left-radius: 5px;
	}

	.pagination a:last-child {
	    border-top-right-radius: 5px;
	    border-bottom-right-radius: 5px;
    }
    .pagination > button {
	    width:200px;
    }
    /* hr { 
	    display: block;
	    margin-top: 0.5em;
	    margin-bottom: 0.5em;
	    margin-left: auto;
	    margin-right: auto;
	    border-style: inset;
	    border-width: 10px;
	} */
   	#child2 table, #child3 table {
		width:700px;
		height:auto;
		text-align:center;
		border-radius: 5px; /* iOS 둥근모서리 제거 */
	}
	button{
	     width: 90px;
	     height: 40px;
	     font-weight: 600;
	     border-radius: 4px;
	     background-color: rgb(241, 196, 15); 
	     color: white;
   	}
    button:hover {
	     background-color: white; /* Green */
	     color: rgb(241, 196, 15);
	     border: 2px solid rgb(241, 196, 15); /* Green */
   	} #main1{
   	width:100%;
   	height:100%;
   	display:inline-block;
   	margin-top:70px;
   /* 	border-style: solid;
    border-color: red; */
   }
</style>
</head>
<body>
	<%@ include file="../common/logoAndLogbutton.jsp" %>
	  <%-- <%@ include file="../common/categorybar.jsp" %> --%>
	   <%--  <%@ include file="../common/myPage_left.jsp" %> --%>
	 <div id="main1"> 
		
	  
	    <%@ include file="adminbar.jsp" %>
	 <!-- </div> -->
	
		<div id="main" align="center">
		<form>
			<div id="child">
				<div id="child2">
					<h1 id="web-font">누리장 신청 회원</h1>
					<br>
					<table border="2" id="web-font">
						<tr>
							<td>신청일자</td>
							<td>이름</td>
							<td>카테고리</td>
							<td>활동 계획서</td>
						</tr>
						<tr>
							<td>2018/08/11</td>
							<td>김지황</td>
							<td>객체지향 프로그래밍</td>
							<td><button>확인하기</button></td>
						</tr>
						<tr>
							<td>2018/08/11</td>
							<td>이진희</td>
							<td>정보처리 자격증</td>
							<td><button>확인하기</button></td>
						</tr>
						<tr>
							<td>2018/08/11</td>
							<td>채은비</td>
							<td>토익 스터디</td>
							<td><button>확인하기</button></td>
						</tr>
						<tr>
							<td>2018/08/11</td>
							<td>허민지</td>
							<td>정보처리 자격증</td>
							<td><button>확인하기</button></td>
						</tr>
						<tr>
							<td>2018/08/11</td>
							<td>김진호</td>
							<td>웹 프론트엔드 디자인</td>
							<td><button>확인하기</button></td>
						</tr>
					</table>
					
					<div class="pagination" align="center">
					
					  <br>
					  
					  <a href="#" >&laquo;</a>
					  <a href="#" class="active">1</a>
					  <a href="#" >2</a>
					  <a href="#" >3</a>
					  <a href="#" >4</a>
					  <a href="#" >5</a>
					  <a href="#" >6</a>
					  <a href="#" >&raquo;</a>
					  
					  <br><br><br>
					  
					  		          
					   <!-- <button id="web-font" onclick="location.href='/nu/views/admin/nuribossAllList.jsp'">신청회원 전체보기</button> -->
					   <%-- <button id="web-font" onclick="location.href='<%=request.getContextPath()%>/views/admin/nuribossAllList.jsp'">신청회원 전체보기</button> --%>
					   <input type ="button" class="button" style="width:200px;" value="신청회원 전체보기" onclick="location.href='<%=request.getContextPath()%>/views/admin/nuribossAllList.jsp'">
					</div>
				</div>
				
				<hr>
				
				<div id="child3">
					<h1 id="web-font">누리장 회원</h1>
					<br>
					<table border="2" id="web-font">
						<tr>
							<td>누리장 승인일자</td>
							<td>이름</td>
							<td>카테고리</td>
							<td>활동 계획서</td>
						</tr>
						<tr>
							<td>2018/08/11</td>
							<td>김진호</td>
							<td>운동</td>
							<td><button>확인하기</button></td>
						</tr>
						<tr>
							<td>2018/08/11</td>
							<td>김진호</td>
							<td>낚시</td>
							<td><button>확인하기</button></td>
						</tr>
						<tr>
							<td>2018/08/11</td>
							<td>김진호</td>
							<td>객체지향 언어 스터디</td>
							<td><button>확인하기</button></td>
						</tr>
					</table>
					
					<div class="pagination" align="center">
					
					  <br>
					  
					  <a href="#" >&laquo;</a>
					  <a href="#" class="active">1</a>
					  <a href="#" >2</a>
					  <a href="#" >3</a>
					  <a href="#" >4</a>
					  <a href="#" >5</a>
					  <a href="#" >6</a>
					  <a href="#" >&raquo;</a>
					  
					  <br><br><br>
					  
					   <!-- <button id="web-font">누리장 전체보기</button> -->
					  <%-- <button id="web-font" onclick="location.href='<%=request.getContextPath()%>/views/admin/nuribossApplyList.jsp'">누리장 전체보기</button> --%>
					  <input type ="button" class="button" style="width:200px;" value="누리장 전체보기" onclick="location.href='<%=request.getContextPath()%>/views/admin/nuribossApplyList.jsp'">
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
	<script>
    </script>
    <br><br><br><br><br>
    <br><br><br><br><br>
    <br><br><br><br><br>
</body>
</html>