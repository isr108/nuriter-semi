<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/*   #main1{
   	/* width:170%; */
   /* 	display:inline-block; */
  /*  	min-height:90%:  */
  /* } */
   #web-font{
      font-family: 'Jua', sans-serif;
   }
   #showLeft{
       border-style: solid; 
        border-color: red;
       width:10%;
      /*  height:15%; */
       font-size:20px;
        display: inline-block;
        /* margin-top:100px; */
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
</style>
</head>
<body>
	 <!-- <div id="main1"> -->
 <!-- <br><br> <br><br> -->
   <hr class="colorgraph">
   <div id="showLeft" >
     <ul class="navi2" style="list-style-type:none">
        <li id="web-font"><a style="font-size:1em;" href="#" onclick="selectAll();">회원정보조회</a></li>
        <hr class="colorgraph">
        <li id="web-font"><a style="font-size:1em;" href="#">회원관리</a></li>
        <li id="web-font"><a href="<%=request.getContextPath()%>/views/common/reportedMember.jsp">신고관리</a></li>
        <li id="web-font"><a href="<%=request.getContextPath()%>/views/admin/nuribossList.jsp">누리장관리</a></li>
        <li id="web-font"><a href="<%=request.getContextPath()%>/views/common/goneMember.jsp">탈퇴회원관리</a></li>
        <hr class="colorgraph">
        <li id="web-font"><a style="font-size:1em;" href="#">게시글관리</a></li>
        <li id="web-font"><a href="<%=request.getContextPath()%>/views/admin/nuriPosts.jsp">누리터관리</a></li>
        <li id="web-font"><a href="<%=request.getContextPath()%>/views/admin/adminNotice.jsp">공지사항</a></li>
        <li id="web-font"><a href="#">고객문의관리</a></li>
        <li id="web-font"><a href="#">자주묻는질문</a></li>
        
     </ul>
 <!-- </div>	 -->
 </div>	
</body>
</html>