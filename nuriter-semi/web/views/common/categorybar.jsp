<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.nuriter.member.model.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .colorgraph {
      width: 98%;
        height: 3px;
        border-top: 0;
        background: rgb(241, 196, 15);
        border-radius: 3px;
   } 
   #wrapper {
       width:100%;
       background-color: white;
   }
   
  /*  #tableDiv{
      width:100%;
      height:100%;
      display: inline-block; */
     /*  border-style: solid; */
       /* border-color: red; */
       
       
   /* } */
   /* #tableDiv table{
   	  width:20%;
   	  height:20%;
      display: inline-block;
      margin-top:1%; */
      /* margin: 8px; */
      /* margin-left:1%;
   }
   #tableDiv table tr{
      align: center;
      border: 2px solid black;
      
   }
   #tableDiv table tr td{
      background: white;
   }
    */
    
   .navi{
   	 background-color: #fff;
   	 font-size:30px;
   	 
   	 /* height:20%; */
   } 
   .navi li {
      display: inline-block;
      /* margin-left:50px; */
      text-align:center;
      margin-top:2%;
     
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
		width:150px;
		z-index:200;
		/* left:0; */
		/* opacity: 0; */
		list-style-type: none;
		text-align:center;
		
		}
	
	.wrapper li:hover ul {
		display:block;   /* 마우스 커서 올리면 서브메뉴 보이게 하기 */
		/* opacity: 1; */
		
	}
	li.na{
		width:150px;
		border-style: solid;
       border-color: rgb(241, 196, 15);
       border-top:none;
       border-bottom:none;
       
	}
	
   
   #showMain{
     /*  border-style: solid; */
       /* border-color: red; */
      display: inline-block;
      width:100%;
      height:100%;
   }
   
   #showLeft{
     /*  border-style: solid; */
       /* border-color: red; */
       width:10%;
      /*  height:15%; */
       font-size:20px;
        display: inline-block;
   }
   
    #showLeft ul li a:hover{
     color:#FF4500;
   }
   
   /* #showRight{
     /*  border-style: solid; */
     /*  border-color: red; */
     /* float:right; */
     /*   margin-left: 10%; */
  /*    display: inline-block;
      width: 90%;
      height:100%;
      
      
   }
   
   #showRightButton{
   	  display:inline-block;
      margin-left: 8%;
      width:90%;
      height:30%;
   } */
   
   #web-font{
      font-family: 'Jua', sans-serif;
   }
   
  /*  #head{
      margin-left:3%;
      margin-top:1%;
      color: rgb(241, 196, 15);
      font-size:3em;
       text-decoration: none; */
      /* padding:8px; */
      /* width:80%; */
  /*  } */
   
   /* # {
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
   
   /*  .button{
       width: 90px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   .button:hover {
     background-color: white; /* Green */
    /*  color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
   /* }
   
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
    /*  color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
   /*}
    */
 /*   #showRightButton button{
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
   } */ 
   
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
    border-bottom-right-radius: 5px; */
    
      #nuriBavBar1.is-fixed {
      width:100%;
    position: fixed;
    /* 하단 경계선 */
    /* border-bottom: 1px solid #ffd400; */
    background-color: #fff;
    top: 0;
     margin-top:68px;
    z-index: 10;
    }
</style>	
</head>
<body>
	<nav id="nuriBavBar1" class="top-0 is-nav-white is-fixed">
        <div class="wrapper">
          <ul class="navi">
               <li id="web-font" value="C1" class="parentsNa" onclick="goParentsNuriList();">언어
               	 <ul>
               		<li id="web-font" class="na" value="C11" onclick="goNuriList();">영어</li>
               		<li id="web-font" class="na" value="C12" onclick="goNuriList();">중국어</li>
               		<li id="web-font" class="na" value="C13" onclick="goNuriList();">일본어</li>
               		<li id="web-font" class="na" value="C14" onclick="goNuriList();">아랍어</li>
               	</ul> 
               	</li>	
               <li id="web-font" value="C2" class="parentsNa" onclick="goParentsNuriList();">공방
               	<ul>
               		<li id="web-font" class="na" value="C15" onclick="goNuriList();">목공</li>
               		<li id="web-font" class="na" value="C16" onclick="goNuriList();">가죽</li>
               		<li id="web-font" class="na" value="C17" onclick="goNuriList();">플로리스트</li>
               		
               	</ul> 
               </li>
               <li id="web-font" value="C3" class="parentsNa" onclick="goParentsNuriList();">요리
               	<ul>
               		<li id="web-font" class="na" value="C18" onclick="goNuriList();">한식</li>
               		<li id="web-font" class="na" value="C19" onclick="goNuriList();">중식</li>
               		<li id="web-font" class="na" value="C20" onclick="goNuriList();">일식</li>
               		<li id="web-font" class="na" value="C21" onclick="goNuriList();">양식</li>
               		
               	</ul> 
               </li>
               <li id="web-font" value="C4" class="parentsNa" onclick="goParentsNuriList();">운동
               <ul>
               	<li id="web-font" class="na" value="C9" onclick="goNuriList();">축구</li>
               	<li id="web-font" class="na" value="C10" onclick="goNuriList();">야구</li>
               	</ul>
               </li>
               <li id="web-font" value="C5" class="parentsNa" onclick="goParentsNuriList();">음악
               <ul>
               	<li id="web-font" class="na" value="C22" onclick="goNuriList();">악기</li>
               	<li id="web-font" class="na" value="C23" onclick="goNuriList();">보컬</li>
               	<li id="web-font" class="na" value="C24" onclick="goNuriList();">작곡</li>
               	</ul>
               </li>
               <li id="web-font" value="C6" class="parentsNa" onclick="goParentsNuriList();">컴퓨터
               <ul>
               	<li id="web-font" class="na" value="C25" onclick="goNuriList();">소프트웨어</li>
               	<li id="web-font" class="na" value="C26" onclick="goNuriList();">하드웨어</li>
               	</ul>
               </li>
               <li id="web-font" value="C7" class="parentsNa" onclick="goParentsNuriList();">문화
               <ul>
               	<li id="web-font" class="na" value="C27" onclick="goNuriList();">영화</li>
               	<li id="web-font" class="na" value="C28" onclick="goNuriList();">미술관</li>
               	<li id="web-font" class="na" value="C29" onclick="goNuriList();">공연</li>
               </ul>
               </li> 
               <li id="web-font" value="C8" class="parentsNa" onclick="goParentsNuriList();">기타
               	<ul>
               	<li id="web-font" class="na" value="C30" >낚시</li> <!-- onclick="goNuriList();" -->
               </ul>
               </li>
          </ul>
        </div>
        <hr class="colorgraph">
  </nav> 
  <script>
  	
  	<%-- function goNuriList(){
  		$(".na").click(function(){
  			var name = $(this).attr('value');
  			location.href="<%=request.getContextPath()%>/SelectNurinerChildList.no?name="+name;
  		});
  	}; --%>
  	
   function goParentsNuriList(){
  		$(".parentsNa").click(function(){
  			var name = $(this).attr('value');
  			location.href="<%=request.getContextPath()%>/selectNuriterList.no?name="+name;
  		});
  	};
  </script>
</body>
</html>