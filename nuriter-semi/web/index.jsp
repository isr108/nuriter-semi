<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.nuriter.member.model.vo.*" import="java.io.util.*"%>
 
<% Member loginUser = (Member)session.getAttribute("loginUser"); %>
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
      width:50%;
      height:10%;
      margin-left:25%;
   }
   #searchBox{
    width:80%;
    height:60px;
    display: inline-block;
    color: white;
    border-width: 6px;
    border-style: solid;
    border-color: rgb(241, 196, 15);
    font-family: 'Jua', sans-serif;
    font-size: 20px; /* 글씨크기 */
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
       width: 930px;
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
    height: 363px;
    width: 695.9px;
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
   		<div id="search" align="center">	
      		<input type="text" id="searchBox" style="background-color:transparent;" value='운동, 언어, 공방, 요리 등의 다양한 취미를 즐겨보세요' onfocus="this.value=''"> 
      		<img src="images/board/search.png" width="50" height="50">
      		<!-- <input type="button" id="searchBtn"> -->
  	 	</div>
  	 	
  	 	<br><br><br><br><br><br><br><br>
   </div>
   
   
   <font id="web-font"><div id="category">
   <h2>카테고리</h2>
   
   </div>
   <div id="category1">
   <table>
       <tr>
         <td>

         <button class="buttonLanguage" onclick="goNuriterList();">

         	<img src="images/board/language.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();">
         	<img src="images/board/bang.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();">
         	<img src="images/board/cooking.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();">
         	<img src="images/board/sports.png" width="80" height="80">
         </button>
         </td>
      </tr>
      <tr>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();">
         	<img src="images/board/music.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();">
         	<img src="images/board/compu.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();">
         	<img src="images/board/cul.png" width="80" height="80">
         </button>
         </td>
         <td>
         <button class="buttonLanguage" onclick="goNuriterList();">
         	<img src="images/board/gita.png" width="80" height="80">
         </button>
         </td>
      </tr> 
      
   </table>
   </div>
  <!-- <font id="web-font">  -->
   
   <!-- <div data-text-content="true" style="font-size:16px;" class="recommendText"> -->
  <div id="recommendText"><!-- <font id="web-font"> -->
      <h2>마감임박 누리터</h2>
    
   </div>
   <br>
   <div id="listBox">
   
   <div id="listBox1">
   		  <table>
       <tr>
         <td style="height:30px; width:226px;">운동</td>
      </tr>
      <tr>
         <td style="height:110px; width:226px; text-align:center" >
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
         				D-2
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
         				야구 보러가실 분 구합니다.
         			</td>
         		</tr>
         		<tr>
         			<td>
         				D-1
         			</td>
         		</tr>
         	</table>
        </td>
      </tr>
   </table>
   </div>
   <div id="listBox2">
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
   </div>
   
   </div>
   
   <br><br><br><br>
   
   <div class="padding-top-50 padding-bottom-50 margin-top-90 bg-color-gray">
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
	   <!-- <div id="notice" onclick="location.href='views/notice/notice.jsp'" align="left"> -->
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
      </div>
      </font>
    <script>
		function logout(){
			var check = window.confirm('로그아웃 하시겠습니까?');
			
			if(check == true){
				location.href='<%=request.getContextPath()%>/logout';
			}
		}
		
		function home(){
			location.href='<%=request.getContextPath()%>/home';
		}
		
		function goNotice(){
			location.href="<%=request.getContextPath()%>/selectList.no";			
		}
		

		function goNuriterList(){
			var name = "C1";
			location.href="<%=request.getContextPath()%>/selectNuriterList.no?name="+name;
		}
	
	</script> 
 <%@ include file="views/common/footer.jsp" %>
</body>
</html>