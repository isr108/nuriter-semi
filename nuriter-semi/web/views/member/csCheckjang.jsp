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
   #web-font1{
      font-family: 'Jua', sans-serif;
       border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
      
   }
   #web-font1:hover {
     background-color: white; /* Green */
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
   }
    #main{
   	min-height:90%:
   }
   #main1{
   	height:100%;
   }
   .outer1{
   		/* border-color: red; 
   	  	display:inline-block; */
		width:100%;
		height:300px;
		/* background:black;
		color:white; */
		margin-left:5%;
		/* margin-right:auto; */
		margin-top:30px;
		display:inline-block;
		
	}
	table {
		border:1px solid black;
		text-align:center;
	}
/* 	.tableArea{
		width:700px;
		height:100px;
		margin-left:auto;
		margin-right:auto;
	}
	.searchArea {
		width:650px;
		margin-left:auto;
		margin-right:auto;
	} */
	
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
   .check1{
   		width:250px;
   		display:inline-block;
   		margin-top:1%;
   		float:left;
   		
   }
   /* .calender1{
   		/* width:100px; */
   		display:inline-block;
   		
  /* } */
</style>
</head>
<body><font id="web-font">
<%@ include file="../common/logoAndLogbutton.jsp" %>
    
    
    <%-- <%@ include file="../common/categorybar.jsp" %>
    
    <%@ include file="myPage_left.jsp" %> --%>
   
   <br><br><br>
   <hr class="colorgraph">
    
   <div id=#main1>
   <h2>누리터 출석 및 관리방</h2> 
   
    <div class="outer1">
    	<br>

	<div class ="check1">
		<input type="text" name="checkcode" style="width: 250px; height: 30px;"
						placeholder="출석코드">
	
		<br><br>
						
		<input id ="web-font1" type="submit" style="width: 250px; height: 30px;" value="출석코드 발급">
	
		<br><br>
	
		<input id ="web-font1" type="button" style="width: 120px; height: 30px;" value="누리터 종료">			
    
    
  	    <input id ="web-font1" type="button" style="width: 120px; height: 30px;" value="누리터  삭제">	
    
    
    	<br><br>
    
    	<input id ="web-font1" type="button" style="width: 250px; height: 30px;" value="불량누리원 신고하기"
    	onclick="location.href='<%=request.getContextPath()%>/views/member/reportPage.jsp'">	
    
    </div>
	
    <div class="caleder1" style="width: 600px; height :300px; display:inline-block;margin-left: 10%;" align="center">
     <!-- <div module="attend_calendar"> -->
        <table border="1" summary="" style="width:400px; height:200px;">
            <!--
                $login_page = /member/login.html
            -->
             <span>{$year}</span>
            <span class="month">.{$month}</span>
            <caption>달력</caption>
            <colgroup>
                <col style="width:13.5%;">
                <col style="width:13.4%;">
                <col style="width:13.4%;">
                <col style="width:13.4%;">
                <col style="width:13.4%;">
                <col style="width:13.4%;">
                <col style="width:13.5%;">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">일</th>
                    <th scope="col">월</th>
                    <th scope="col">화</th>
                    <th scope="col">수</th>
                    <th scope="col">목</th>
                    <th scope="col">금</th>
                    <th scope="col">토</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="sun"><div>{$sun}</div></td>
                    <td><div>{$mon}</div></td>
                    <td><div>{$the}</div></td>
                    <td><div>{$wed}</div></td>
                    <td><div>{$thu}</div></td>
                    <td><div>{$fri}</div></td>
                    <td class="sat"><div>{$sat}</div></td>
                </tr>
                <tr>
                    <td class="sun"><div>{$sun}</div></td>
                    <td><div>{$mon}</div></td>
                    <td><div>{$the}</div></td>
                    <td><div>{$wed}</div></td>
                    <td><div>{$thu}</div></td>
                    <td><div>{$fri}</div></td>
                    <td class="sat"><div>{$sat}</div></td>
                </tr>
                <tr>
                    <td class="sun"><div>{$sun}</div></td>
                    <td><div>{$mon}</div></td>
                    <td><div>{$the}</div></td>
                    <td><div>{$wed}</div></td>
                    <td><div>{$thu}</div></td>
                    <td><div>{$fri}</div></td>
                    <td class="sat"><div>{$sat}</div></td>
                </tr>
                <tr>
                    <td class="sun"><div>{$sun}</div></td>
                    <td><div>{$mon}</div></td>
                    <td><div>{$the}</div></td>
                    <td><div>{$wed}</div></td>
                    <td><div>{$thu}</div></td>
                    <td><div>{$fri}</div></td>
                    <td class="sat"><div>{$sat}</div></td>
                </tr>
                <tr>
                    <td class="sun"><div>{$sun}</div></td>
                    <td><div>{$mon}</div></td>
                    <td><div>{$the}</div></td>
                    <td><div>{$wed}</div></td>
                    <td><div>{$thu}</div></td>
                    <td><div>{$fri}</div></td>
                    <td class="sat"><div>{$sat}</div></td>
                </tr>
            </tbody>
        </table>
       <!--  </div> -->
    </div>
    
    <div class="caleder1" style="width: 500px; height :300px; display:inline-block;margin-left: 10%;" align="center">
    	<p style="width:50%">출석 누리원</p>
    	<table border="1" summary="" style="width:400px; height:30px;">
    		<tr>
                    <th >이름</th>
                    <th >출석</th>
                    
            </tr>
            <tr>
           		 <td>김정태</td>
           		 <td></td>
    		</tr>
    		<tr>
           		 <td>이선생</td>
           		 <td></td>
    		</tr>
    	</table>
    
    </div>
     
</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>	
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
  <%@ include file="../common/footer.jsp" %>    
</body>
</html>