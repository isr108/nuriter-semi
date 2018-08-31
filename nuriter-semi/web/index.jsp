<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.nuriter.member.model.vo.*, com.kh.nuriter.nuriter.model.vo.PageInfo, java.util.*, com.kh.nuriter.nuriter.model.vo.*"%>
 
<% Member loginUser = (Member)session.getAttribute("loginUser");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<title>Insert title here</title>


<style>
   html{
   		height:100%;
   }
   body{
   	 height:100%;
   	 background:#F2F2F2;
   }
   #main{
   	min-height:90%:
   }
   .colorgraph {
    width: 98%;
    height: 3px;
    border-top: 0;
    background: gray;
    border-radius: 3px;
   }
   #wrapper {
    width:70%;
   }
   #tableDiv{
    width:100%;
    height:100%;
    display: inline-block;
   }
   #tableDiv table{
   	  width:20%;
   	  height:20%;
      display: inline-block;
      margin-top:1%;
      margin-left:1%;
   }
   #tableDiv table tr{
      align: center;
      border: 2px solid black;
   }
   #tableDiv table tr td{
      background: white;
   }
   
   ul.navi li {
      display: inline-block;
      text-align:center;
   }
   ul.navi li a {
      float: center;
      font-size: 20px;
      line-height: 40px;
      color: #000000;
      text-decoration: none;
      margin: auto; 
      padding: 0 30px;
      -moz-border-radius-topright: 10px;
      -webkit-border-top-right-radius: 10px;
      -moz-border-radius-topleft: 10px;
      -webkit-border-top-left-radius: 10px;
   }
   .navi li a:hover {
      color:#FF4500;
   }
   ul.navi2 li a {
      float: center;
      font-size: 20px;
      line-height: 40px;
      color: #000000;
      text-decoration: none;
      -moz-border-radius-topright: 10px;
      -webkit-border-top-right-radius: 10px;
      -moz-border-radius-topleft: 10px;
      -webkit-border-top-left-radius: 10px;
   }
   #showMain{
      display: inline-block;
      width:100%;
      height:100%;
   }
   #showLeft{
       width:10%;
       font-size:20px;
       display: inline-block;
   }
   #showRight{
     float:right;
      display: inline-block;
      width: 90%;
      height:100%;
   }
   #showRightButton{
      margin-left: 8%;
      width:50%;
      height:30%;
   }
   #web-font{
      font-family: 'Jua', sans-serif;
   }
   #divHead {
   	margin-top:30px;
   	overflow: hidden;
   }
   #head{
      margin-left:150px;
      color: white;
      font-size:2em;
      text-decoration: none;
   }
   #top{
   	background-image:url('images/board/topposter.png');
   	background-repeat:no-repeat;
    background-size:cover;
    background-size:100% 100%;
   	width:100%;
   	height:70px;
   }
   #iBox{
      display: inline-block;
      width:100%;
      height:60%;
      background-image:url('images/board/main4.png  ');
      background-repeat:no-repeat;
      background-size:cover;
      background-size:100% 100%;
   }
   #search{
   	  display: inline-block;
      width:790px;
      height:70px;
      margin-left:30%;
      border-width: 6px;
      border-style: solid;
      border-color: rgb(241, 196, 15);
   }
   #searchBox{
    width:710px;
    height:55px;
    display: inline-block;
    color: white;
    font-family: 'Jua', sans-serif;
    font-size: 25px; /* 글씨크기 */
    text-align: center;
   }
   #searchBtn {
     width: 90px;
   	 height: 60px;
     border-radius: 3px;
     font-weight: 600;
     border-color: transparent;
     font-size: 15px;
     color: white;
     cursor: pointer;
     background-color: rgb(241, 196, 15);
   }
   #loginBtn{
   	  float:right;
      display: inline-block;
      margin-right:130px;
      height:10%;
   	  width:20%; 
   }
   #loginBtn a{
   		width:10%;
   		text-decoration: none;
   		margin-right:2%;
   		/* color:#646464; */
   		color:white;
   }
   .button{
     width: 90px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
     border:0;
     outline:0;
   }
   
   .button:hover {
     background-color: white; /* Green */
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
   }
   
   .button1{
     background-image:url('images/board/language.png');
     background-size:cov00er;
     background-size:70% 70%;
     background-color: white;
   }
   
   .buttonLanguage{
    background: white;
    align: center;
    display: inline-block;
    width:226px;
    height:96px; 
    padding: 0;
    margin: 0;
   }
   
   .buttonLanguage img {
   	display: block;
   	margin-left:auto;
   	margin-right:auto;
    height: 80px;  
    width: 80px;
   }
   
   .buttonLanguage:hover {
     background-color: white; /* Green */
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
   }
   
   #showMain button{
       width: 150px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   #showMain button:hover {
     background-color: white; /* Green */
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
   }
   
   #showRightButton button{
       width: 150px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   #showRightButton button:hover {
     background-color: white;
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15);
   }
   
    #category{
      /* border:1px solid black; */
      height:62px;
      margin-top:50px;
      margin-left:auto;
       margin-right: auto;
      text-align:center;
      font-size: 35px;
       font-weight: bold;
   }
   
   #category1{
   	   overflow:hidden;
       margin-left:auto;
       margin-right:auto;
       width:930px;
       height:70%;
       float:center;
   }

  
   #recommendText{
   text-align:center;
      font-size:25px;
      font-weight: bold;
      margin-left: auto;
      margin-right: auto;
      margin-top: 100px;
      height: 50%;
      width: 70%;
     
   }
   
   #help{
   		text-align:center;
   		float:right;
   		/* margin-top:1%; */
   		margin-right:2%;
   }
   
    #listBox{
   border:1px solid black;
    height: 365px;
    width: 698px;
    /* margin-left:auto;
    margin-right:auto; */
    margin:auto;
   
   }
   
    #listBox1{
   border:1px solid black;
    /* height: 362px;
    width: 682px; */
    /* margin-left:auto;
    margin-right:auto; */
    margin:auto;
    display:inline-block;
    text-align:center;
   
   }
    #listBox2{
   border:1px solid black;
    /* height: 362px;
    width: 682px; */
    /* margin-left:auto;
    margin-right:auto; */
    margin:auto;
    display:inline-block;
    text-align:center;
   
   }
   
   #listBox3{
   border:1px solid black;
    /* height: 362px;
    width: 682px; */
    /* margin-left:auto;
    margin-right:auto; */
    margin:auto;
    display:inline-block;
    text-align:center;
   
   }
   
    #notice{
      float:center;
   	  display:inline-block;
      font-size: 15px;
      margin-left: 170px;
      margin-bottom: 40px;
   }
   #notice:hover{
   	  cursor:pointer;
   }
   
   #noticeMain{
   	  display:inline-block;
   	  width:30%;
      height:50%;
      font-size: 15px;
      margin-left:120px;
   }
   
   #container {
    height:200px;
   	background:#BDBDBD;
   }
   
   input:focus { 
   	outline: none; 
   }
   .searchButton{
   	cursor: pointer;
   	margin-bottom: 9px;
   }
</style>

</head>
<body>
<%-- <%session.invalidate(); %> --%>
 <div id="main">  
   <div id="top">
   	
   </div>
   <div id="iBox">
   	<div id="divHead">
  	 <font id="web-font"><a id="head" href="#home" onclick="home()"><img src="images/board/nuriter.png" width="80" height="80"></a></font> 	
  	 
  	 	<div id="loginBtn" align=right> 	
	  	    <%if(loginUser == null) {%>
	        	<button class="button" onclick="location.href='views/member/login.jsp' " >로그인</button>
	        	<button class="button" onclick="location.href='views/member/memberJoinForm.jsp' ">회원가입</button>
	        <%}else{ %>
	        <%if(loginUser != null) {%>
	        		<font id="web-font"> <a><%= loginUser.getNickName() %> 님</a></font>
	        		<button class="button" onclick="logout();" >로그아웃</button>
	        <% } %>
	        		<% if(!loginUser.getUserEmail().equals("admin")){ %>
						<button class="button" onclick="location.href='<%=request.getContextPath()%>/selectMyNuriList.nu?'">마이페이지</button>
					<% }else{ %>
						<button class="button" onclick="location.href='views/admin/adminPage.jsp'">관리페이지</button>
					<% } %>
	        
	        <%} %>
   		</div>
  	</div>
      <br><br><br><br><br><br><br><br>
      <form id="searchNuriter" action="<%=request.getContextPath() %>/selectSearch.nu" method="get">
   		<div id="search" align="center">	
      		<input type="text" name="search" id="searchBox" style="background-color:transparent;border:0 solid black;" value='운동, 언어, 공방, 요리 등의 다양한 취미를 즐겨보세요' onfocus="this.value=''"> 
      		<img src="images/board/search.png" width="55px" height="55px" class="searchButton">
      		<!-- <input type="button" id="searchBtn"> -->
  	 	</div>
  	  </form>
  	 	<br><br><br><br><br><br><br><br>
   </div>
   
   
   <font id="web-font"><div id="category">
   <div align="center">
   <h2>카테고리</h2>
   </div>
   
   </div>
   <div id="category1" align="center">
   <table>
       <tr>
         <td>

         <button class="buttonLanguage" onclick="goNuriterList();" value="C1">

         	<img src="images/board/language.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();" value="C2">
         	<img src="images/board/bang.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();" value="C3">
         	<img src="images/board/cooking.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();" value="C4">
         	<img src="images/board/sports.png" width="80" height="80">
         </button>
         </td>
      </tr>
      <tr>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();" value="C5">
         	<img src="images/board/music.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();" value="C6">
         	<img src="images/board/compu.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();" value="C7">
         	<img src="images/board/cul.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();" value="C8">
         	<img src="images/board/gita.png" width="80" height="80">
         </button>
         </td>
      </tr> 
      
   </table>
   </div>
  <!-- <font id="web-font">  -->
 <% 
/*  ArrayList<Nuriter> list = (ArrayList<Nuriter>)request.getAttribute("list") */; 
 ArrayList<HashMap<String,Object>> pictureList = (ArrayList<HashMap<String,Object>>)request.getAttribute("pictureList");
 /* PageInfo pi = (PageInfo)request.getAttribute("pi");
 int listCount = pi.getListCount();
 int currentPage = pi.getCurrentPage();
 int maxPage = pi.getMaxPage();
 int startPage = pi.getStartPage();
 int endPage = pi.getEndPage(); */
  
 %>
 
   <!-- <div data-text-content="true" style="font-size:16px;" class="recommendText"> -->
  <div id="recommendText"><!-- <font id="web-font"> -->
      <h2>마감임박 누리터</h2>
    
   </div>
   <br>
   <div id="listBox">
   
    
   		 <%
        		for(int i = 0; i < pictureList.size(); i++){
        			HashMap<String,Object> hmap = pictureList.get(i);
        	%>
        	<div id="listBox1">
        		<table id="nuriterListArea">
           			<tr id="tableHiddenTop">
           				<input type="hidden" value="<%= hmap.get("nuri_number")%>">
           				<th><img src="/ns/thumbnail_uploadFiles/<%=hmap.get("change_name") %>" width="230px" height="230px" onclick=""></th>
           			</tr>
           			<tr>
           				<input type="hidden" value="<%= hmap.get("nuri_number")%>">
           				<td id="priceTd" align="left">[<%= hmap.get("category_name") %>]</td>
           			</tr>
           			<tr align="center">
           				<input type="hidden" value="<%= hmap.get("nuri_number")%>">
            			<td id="titleTd" align="left"  style="width:230px;overflow:hiddem;text-overflow:ellipsis;"><%= hmap.get("nuri_name") %></td>

           			</tr>
           			<tr id="tableHidden">
           				<input type="hidden" value="<%= hmap.get("nuri_number")%>">
           				<td id="priceTd" align="right"><%= hmap.get("price") %>원</td>
           			</tr>
            	</table>
			</div>
        	<%  System.out.println(hmap.get("nuri_number")); } %> 
  
   <!-- <div id="listBox2">
     <table>
       <tr>
         <td style="height:30px; width:226px;">문화</td>
      </tr>
      <tr>
         <td style="height:110px; width:226px;" >
         	<table>
         		<tr>
         			<td rowspan=2>
         				 <img width="80px" height="90px" src="images/board/cat.png">
         			</td>
         			<td>
         				같이 축구하실분 구합니다.
         			</td>
         		</tr>
         		<tr>
         			<td>
         				D-3
         			</td>
         		</tr>
         	</table>
        </td>
      </tr>
      <tr>
         <td style="height:110px; width:226px;" >
         	<table>
         		<tr>
         			<td rowspan=2>
         				 <img width="80px" height="90px" src="images/board/cat.png">
         			</td>
         			<td>
         				같이 축구하실분 구합니다.
         			</td>
         		</tr>
         		<tr>
         			<td>
         				D-3
         			</td>
         		</tr>
         	</table>
        </td>
      </tr>
      <tr>
         <td style="height:110px; width:226px;" >
         	<table>
         		<tr>
         			<td rowspan=2>
         				 <img width="80px" height="90px" src="images/board/cat.png">
         			</td>
         			<td>
         				같이 축구하실분 구합니다.
         			</td>
         		</tr>
         		<tr>
         			<td>
         				D-3
         			</td>
         		</tr>
         	</table>
        </td>
      </tr>
   </table>
   </div>
    <div id="listBox3">
     <table>
      <tr>
         <td style="height:30px; width:226px;">음악</td>
      </tr>
     <tr>
         <td style="height:110px; width:226px;" >
         	<table>
         		<tr>
         			<td rowspan=2>
         				 <img width="80px" height="90px" src="images/board/cat.png">
         			</td>
         			<td>
         				같이 축구하실분 구합니다.
         			</td>
         		</tr>
         		<tr>
         			<td>
         				D-3
         			</td>
         		</tr>
         	</table>
        </td>
      </tr>
      <tr>
         <td style="height:110px; width:226px;" >
         	<table>
         		<tr>
         			<td rowspan=2>
         				 <img width="80px" height="90px" src="images/board/cat.png">
         			</td>
         			<td>
         				같이 축구하실분 구합니다.
         			</td>
         		</tr>
         		<tr>
         			<td>
         				D-3
         			</td>
         		</tr>
         	</table>
        </td>
      </tr>
      <tr>
         <td style="height:110px; width:226px;" >
         	<table>
         		<tr>
         			<td rowspan=2>
         				 <img width="80px" height="90px" src="images/board/cat.png">
         			</td>
         			<td>
         				같이 축구하실분 구합니다.
         			</td>
         		</tr>
         		<tr>
         			<td>
         				D-3
         			</td>
         		</tr>
         	</table>
        </td>
      </tr>
   </table>
   </div> -->
   
   </div>
   
   <br><br><br><br>
   
   <%-- <div class="padding-top-50 padding-bottom-50 margin-top-90 bg-color-gray">
   <div id="container">
   <div class="row"><div class="col-xs-4 padding-side-0 text-center">
   <br><br>
   <h3 class="NGB margin-top-0">전문적인 서비스</h3> 
   <h5 class="line-height margin-bottom-0">
	각 분야 전문가
   <b>119,471명</b>의
   <br>차별화된 서비스를 이용해보세요.
   </h5></div> <div class="col-xs-4 padding-side-0 text-center">
   <br><br>
   <h3 class="NGB margin-top-0"> 만족도 높은 결과물 </h3> 
   <h5 class="line-height margin-bottom-0">
	의뢰인 평점
	<b>98%</b>에 달하는
	<br>정확하고 만족도 높은 서비스를 경험해보세요.
   </h5></div> <div class="col-xs-4 padding-side-0 text-center">
   <br><br>
   <h3 class="NGB margin-top-0">안전한 거래 시스템</h3> <h5 class="line-height margin-bottom-0"><b>700,141건</b>의 거래를 완료한
   <br>안전한 주문 시스템을 이용해보세요.
   
   </h5></div></div></div></div>
						
    <br><br><br><br>
    
    <hr>
    
	   <div id="noticeMain" onclick="location.href='views/notice/notice.jsp'" align="left"><!-- <font id="web-font"> -->
	      <h4>(주)누리터 사업자 정보</h4><br>
	      (주)누리터 | 서울시 강남구 역삼로<br>
	         대표: 채은비 | 개인정보관리책임자: 김진호<br>
	      1544-1544
	   </div>
	   
	   <div id="notice" onclick="goNotice();">
	   	<h4>공지사항</h4>
	      <ul>
	         <li>고객센터 운영시간 변경안내</li>
	         <li>새로운 카테고리 추가 안내</li>
	         <li>일시적인 오류 안내</li>
	      </ul>
	   </div>
	   
      <div id="help">
	      <h4>누리터 고객센터<br>
	      1588-3287<br>
	             상담시간 : 평일 10:30 ~ 18:30<br>
	      *토요일 및 공휴일 휴무</h4>
	      <input type ="button" id="callMe" value="전화 전 클릭" onclick="location.href='<%=request.getContextPath()%>/views/notice/fnq.jsp'">
      </div>--%>
      </font> 
    <script>
		function logout(){
			var check = window.confirm('로그아웃 하시겠습니까?');
			
			if(check == true){
				location.href='<%=request.getContextPath()%>/logout';
			}
		}
		
		function home(){
			location.href='<%=request.getContextPath()%>/';
		}
		
		function goNotice(){
			location.href="<%=request.getContextPath()%>/selectList.no";
		}
		
		$(function(){
			$(".buttonLanguage").click(function(){
				var name = $(this).attr('value');
			    /* alert(name); */
			    location.href="<%=request.getContextPath()%>/selectNuriterList.no?name="+name;
			});
		});
		
		$(function(){
			$(".searchButton").click(function(){
				alert("검색 버튼 클릭");
				$("#searchNuriter").submit();
			});
		});
	
	</script> 
 <%@ include file="views/common/footer.jsp" %>
</body>
</html>