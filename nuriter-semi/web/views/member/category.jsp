<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>

	html{
   		height:100%;
   }
   body{
   	 height:100%;
   }
   .colorgraph {
      width: 98%;
        height: 3px;
        border-top: 0;
        background: rgb(241, 196, 15);
        border-radius: 3px;
      /*   border-style: solid; 
      border-color: red;  */
   }
   #wrapper {
       width:70%;
      /*  border-style: solid; 
      border-color: red;  */
           /*margin : 0 auto ;*/
   }
   
   #tableDiv{
      width:100%;
      height:100%;
      display: inline-block;
    /*  border-style: solid; 
       border-color: red;  */
       
       
   }
   #tableDiv table{
   	  width:20%;
   	  height:30%;
      display: inline-block;
      margin-top:1%;
      /* margin: 8px; */
      margin-left:1%;
      /* border-style: solid; 
      border-color: red;  */
   }
   #tableDiv table tr{
      align: center;
      border: 2px solid black;
      /* border-style: solid; 
      border-color: red;  */
      
   }
   #tableDiv table tr td{
      background: white;
      /* border-style: solid; 
      border-color: red;  */
   }
   
  /*  ul.navi li {
      display: inline-block;
      /* margin:auto;  */
   /*   text-align:center;
   } */
   
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
       /* margin: auto;  */
      /* padding: 0 30px; */
      -moz-border-radius-topright: 10px;
      -webkit-border-top-right-radius: 10px;
      -moz-border-radius-topleft: 10px;
      -webkit-border-top-left-radius: 10px;
   }
   
  	
	.wrapper li ul {
		background:white;
		display:none;  /* 평상시에는 서브메뉴가 안보이게 하기 */
		height:auto;
		padding:0px;
		margin:0px;
		border:0px;
		position:absolute;
		width:120px;
		z-index:200;
		/* left:0; */
		/* opacity: 0; */
		list-style-type: none;
		text-align:left;
		
		}
	
	.wrapper li:hover ul {
		display:block;   /* 마우스 커서 올리면 서브메뉴 보이게 하기 */
		/* opacity: 1; */
		
	}
	li.na{
		width:120px;
		border-style: solid;
       border-color: rgb(241, 196, 15);
       border-top:none;
       border-bottom:none;
       
	}
	
   
   #showMain{
     /*  border-style: solid; 
      border-color: red;  */
      display: inline-block;
      width:100%;
      height:100%;
   }
   
   #showLeft{
     /*  border-style: solid;
       border-color: red */
       width:10%;
      /*  height:15%; */
       font-size:20px;
        display: inline-block;
   }
   
    #showLeft ul li a:hover{
     color:#FF4500;
   }
   
   #showRight{
     /* border-style: solid;
     border-color: red;  */
     float:right;
     /*   margin-left: 10%; */
      display: inline-block;
      width: 90%;
      height:100%;
      
      
   }
   
   #showRightButton{
  /*  border-style: solid; 
      border-color: red;  */
   	  display:inline-block;
      margin-left: 8%;
      width:90%;
      height:10%;
   }
   
   #web-font{
      font-family: 'Jua', sans-serif;
   }
   
   /* #head{
   border-style: solid; 
      border-color: red; 
      margin-left:3%;
      margin-top:1%;
      color: rgb(241, 196, 15);
      font-size:3em;
       text-decoration: none; */
      /* padding:8px; */
      /* width:80%; */
   /* } */
   
   /* #iBox{
      display: inline-block;
      margin-top: 5px; */
      /* margin-left: 30px; */
   /*    width:100%;
      height:50%; */
      /*  height: 40px; */
  /*  } */
   
  /*  #search{
   	  display: inline-block;
      width:50%;
      height:10%; */
      /* margin-top:2%; */
 /*   }
   
   #searchBox{
    display: inline-block;
       color: rgb(94, 94, 94);
       border-width: 3px;
       border-style: solid;
       border-color: rgb(241, 196, 15);
       width:70%;
       height:40px;
   }
   */ 
  /*  #searchBtn {
     width: 90px;
    height: 40px;
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
      margin-top: 2%;
      margin-right:1%;
   	/*   margin-left: 20%; */
   /* 	 width:10%:
   	 
   } */
   
    .button{
       width: 90px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   .button:hover {
     background-color: white; /* Green */
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
   }
   
   #showMain button{
       width: 100px;
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
   .select-control{
   		display:inline-block;
   		width:30%;
   		margin-left: 340px;
   }
   
/*   .pagination {
    display: inline-block;
    width:60%;
    float:right;
    
}

.pagination a {
    color: black;
    float: left;
     padding: 8px 16px;
    text-decoration: none;
    border: 1px solid #ddd;
}

.pagination a.active {
    background-color: #4CAF50;
    color: white;
    border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

.pagination a:first-child {
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
}

.pagination a:last-child {
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    } */
 
</style>
</head>
<body>
<!-- <div id="iBox">
        <label id="head" href='../../index.jsp'><font id="web-font">누리터</font></label>
       <font id="web-font"><a id="head" href='../../index.jsp'>누리터</a></font> 
        <div id="search" align="center">
      		<input type="text" id="searchBox" value="내용을 입력해 주세요">
      		<input type="button" id="searchBtn" value="검색">
  	 	</div>
  	 	
  	 	 <div id="loginBtn">
        	<button class="button">로그인</button>
        	<button class="button">회원가입</button>
      		<button type="button" class="btn">로그인</button>
       	 <button type="button" class="btn btn-primary">회원가입</button>
   		</div>
   </div>  -->
   
  
   <%@ include file="../common/logoAndLogbutton.jsp" %>
  
   
  
    <%@ include file="../common/categorybar.jsp" %>

    <br><br><br> <br><br><br> <br><br><br><br>
      <!-- <nav>
        <div class="wrapper">
          <ul class="navi">
               <li id="web-font" ><a href="/bs/views/Login.html">언어</a>
               	 <ul>
               		<li id="web-font" class="na"><a href="#">일본어</a></li>
               		<li id="web-font" class="na"><a href="#">중국어</a></li>
               		
               	</ul> 
               	</li>	
               <li id="web-font"><a href="/bs/views/mypage.html">공방</a></li>
               <li id="web-font"><a href="/bs/views/roadmap.html">요리</a></li>
               <li id="web-font"><a href="/bs/views/hobby.html">운동</a></li>
               <li id="web-font"><a href="/bs/views/nuritaShow.html">음악</a></li>
               <li id="web-font"><a href="/bs/views/nuritaShow.html">컴퓨터</a></li>
               <li id="web-font"><a href="/bs/views/nuritaShow.html">문화</a></li>
               <li id="web-font"><a href="/bs/views/nuritaShow.html">기타</a></li>
          </ul>
        </div>
  </nav>   -->
  
  
  <!-- <hr class="colorgraph"> -->
  
  <div id="showMain">
  
   <div id="showLeft" >
     <ul class="navi2" style="list-style-type:none">
        <li id="web-font"><a href="#">운동</a></li>
        <hr class="colorgraph">
        <li id="web-font"><a href="#">카테고리</a></li>
        <hr class="colorgraph">
        <li id="web-font"><a href="#">축구</a></li>
        <li id="web-font"><a href="#">농구</a></li>
        <li id="web-font"><a href="#">야구</a></li>
     </ul>
   </div>
  
     <div id="showRight">
     
        <div id="showRightButton">
            <button class="button" onclick="location.href='/ns/views/member/nuriterOpen.jsp' ">누리터 개설하기</button>
              <button class="button">관심누리터 확인</button>
               <div class="select-control inline-block width-100px" align="right">
               <select class="input-xs" onchange="sendGAClickEvent('정렬 방식 변경 - ' + this.value)" >
                    <option value="recommendation_point">추천순</option>
                    <option value="ranking_points" selected="">랭킹순</option>
                    <option value="created_at">신규등록순</option>
              </select>
        	</div>  
              
       </div>
        
        
     <!-- <br><br> -->
      
        <div id="tableDiv" align="center">
           <table>
           <tr>
            <th><img src="../image/go1.gif" width="200px" height="130px" onclick="location.href='categoryDetail.jsp'"></th>
           </tr>
           <tr>
            <td><p id="web-font-table" align="center"><font size="4" color="black">[축구]한 게임 찢으실분 구합니다.</font></p></td>
           </tr>
            </table>
            
            <table>
           <tr>
            <th><img src="../image/go1.gif" width="200px" height="130px"></th>
           </tr>
           <tr>
            <td><p id="web-font-table" align="center"><font size="4" color="black">[축구]한 게임 찢으실분 구합니다.</font></p></td>
           </tr>
            </table>
            
            <table>
           <tr>
            <th><img src="../image/go1.gif" width="200px" height="130px"></th>
           </tr>
           <tr>
            <td><p id="web-font-table" align="center"><font size="4" color="black">[축구]한 게임 찢으실분 구합니다.</font></p></td>
           </tr>
            </table>
            
            <table>
           <tr>
            <th><img src="../image/go1.gif" width="200px" height="130px"></th>
           </tr>
           <tr>
            <td><p id="web-font-table" align="center"><font size="4" color="black">[축구]한 게임 찢으실분 구합니다.</font></p></td>
           </tr>
            </table>
            
            
            
            
            <table>
           <tr>
            <th><img src="../image/go1.gif" width="200px" height="130px"></th>
           </tr>
           <tr>
            <td><p id="web-font-table" align="center"><font size="4" color="black">[축구]한 게임 찢으실분 구합니다.</font></p></td>
           </tr>
            </table>
            
            <table>
           <tr>
            <th><img src="../image/go1.gif" width="200px" height="130px"></th>
           </tr>
           <tr>
            <td><p id="web-font-table" align="center"><font size="4" color="black">[축구]한 게임 찢으실분 구합니다.</font></p></td>
           </tr>
            </table>
            
            <table>
           <tr>
            <th><img src="../image/go1.gif" width="200px" height="130px"></th>
           </tr>
           <tr>
            <td><p id="web-font-table" align="center"><font size="4" color="black">[축구]한 게임 찢으실분 구합니다.</font></p></td>
           </tr>
            </table>
            
            <table>
           <tr>
            <th><img src="../image/go1.gif" width="200px" height="130px"></th>
           </tr>
           <tr>
            <td><p id="web-font-table" align="center"><font size="4" color="black">[축구]한 게임 찢으실분 구합니다.</font></p></td>
           </tr>
            </table>
            
            
             <br><br><br><br><br><br><br>
    <div class="pagination" align="center">
	  <a href="#" >&laquo;</a>
	  <a href="#" class="active">1</a>
	  <a href="#" >2</a>
	  <a href="#" >3</a>
	  <a href="#" >4</a>
	  <a href="#" >5</a>
	  <a href="#" >6</a>
	  <a href="#" >&raquo;</a>
		</div>
 <!--  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
        </div>
   
     </div>
   
     
  </div>
  
 
   
</body>
</html>