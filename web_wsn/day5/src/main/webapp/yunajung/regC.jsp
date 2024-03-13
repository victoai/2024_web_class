<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@  page import="java.sql.*" %>  
 
<!DOCTYPE>
<HTML>
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <!-- 구글 폰트 -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">

   <title>Document</title>

   <style>
      * {padding: 0; margin: 0;}

      #wrap {width: 100%; height: auto;}

      .gangjo {color: red;}

      header {
         width: 100%; 
         margin: 0 auto;
         text-align: center;
         padding: 50px;

         background-image: url("main.jpg");
         
      }
      header h1 {
         font-family: "Black Han Sans", sans-serif;
         font-weight: 400;
         font-style: normal;
         font-size: 80px;
      }
      

      /*------ nav -------*/
      nav {
         width: 100%;
         background-color: black;
         text-align: center;

         margin: 0 auto;
         height: 100px;
      }
      nav ul {
         display: flex;
         list-style: none;
      }
      nav li {
         background-color: red;
         width: 33.3%;
         font-size: 25px;
         font-weight: 600;
      }
      a {
         text-decoration: none;
         color: white;
      }
      section {
      	 height: 200px;
      	background-image: url("tree.jpg");
      	background-position:center;
 		background-size:cover; 
      }
      /*------------- footer --------------*/
      footer {
         background-color: black;
         color: #FED403;
         display: flex;
      }
      .item {
         margin:0 auto;
         font-weight: 800;
         padding: 25px 0 25px 0; 
      }
	table {
    	width : 30%;
        border: 3px solid rgb(203, 238, 5);
        border-style:double;
        border-collapse: collapse;
        margin : 0 auto;
	}
    .a {
        font-family: "Black Han Sans", sans-serif;
        color : blue;
        background-color: rgb(203, 238, 5);
        text-align: center;
    }
    td {
        border: 3px solid rgb(190, 231, 9);
        border-style:double;
		padding: 5px;
    }
    button {
    width: 100px;
    }
    .b {
    	text-align: center;
    }
   </style>
</head>
<body>
<div id="wrap">
   <header> 
      <h1>장씨가 <a class="gangjo">엄선</a>하고 김씨가 <a class="gangjo">선정</a>한 비디오가게</h3>
   </header>

   <nav>
      <ul>
         <li><a href="main.html">HOME</a></li>
         <li><a href="listC.jsp">조회</a></li>
         <li><a href="regC.jsp">등록</a></li>
      </ul>
   </nav>

<section>
<form name="frm" action="regAction.jsp" method="post" onsubmit="return check()">
	<table>
		<tr>
			<!-- 임시 -->
			<td class="a">고객코드</td>
			<td><input type="text" id="c_id" name="c_id"></td>
		</tr>	
		<tr>
			<td class="a">고객명</td>
			<td><input type="text" id="name" name="name"></td>
		</tr>
		<tr>
			<td class="a">전화번호</td>
			<td><input type="text" id="tel" name="tel"></td>
		</tr>
		<tr>
			<td class="a">주민번호</td>
			<td><input type="text" id="jumin" name="jumin"></td>
		</tr>
		<tr>
			<td class="a">선호장르</td>
			<td>
				<select name="genres" >
					<option>선호장르</option>
					<option value="코미디">코미디</option>
					<option value="엑션">엑션</option>
					<option value="전쟁">전쟁</option>
					<option value="범죄">범죄</option>
					<option value="판타지">판타지</option>
					<option value="애니">애니</option>
					<option value="드라마">드라마</option>
					<option value="좀비">좀비</option>					
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="b">
	 			<button type="submit" onclick="test()">등록</button>
	 			<button type="reset">취소</button>
	 		</td> 
		</tr>
	</table>
</form>
</section>
	<footer>
		<div class="item">(주)장&김 비디오가게</div>
	    <div class="item">IG : J. DIG_K.PICK_VIDS</div>
	    <div class="item"> 22811, NEW YORK CITY, NYC, USA </div>
	</footer>
</div>
<script>    

</script>
</BODY>
</HTML>