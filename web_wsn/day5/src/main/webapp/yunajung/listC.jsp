<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- 구글 폰트 -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
	* {padding: 0; margin: 0;}

      #wrap {width: 100%; height: auto;}

      .gangjo {color: red;}

      header {
         width: 100%; margin: 0 auto;
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
      	/*height: 550px;*/
      	background-image: url("tree.jpg");
      	background-position:center;
 		background-size:cover; 
      	}
      table {
         width : 60%;
         border: 3px solid rgb(203, 238, 5);
         border-style:double;
         border-collapse: collapse;
         margin : 50px auto;
      }
      thead {
         color : blue;
         background-color: rgb(203, 238, 5)
      }
      td {
         border: 3px solid rgb(190, 231, 9);
         border-style:double;
         text-align: center;
         font-family: "Dongle", sans-serif;
         font-size: 25px;
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
      <table>
         <thead>
         <tr>
            <td>고객코드</td>
            <td>고객명</td>
            <td>휴대폰번호</td>
            <td>주민번호</td>
            <td>선호장르</td>
         </tr>
         </thead>
	<!-- 데이터 연동 -->
	<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:testdb";
	String user = "scott";
	String password = "tiger";
	
	
	try {
	
		Class.forName(driver);		
	
		Connection con = DriverManager.getConnection(url, user, password);		
	
		String sql = "select * from cust0mer_tbl order by 1";
		PreparedStatement pst = con.prepareStatement(sql);		
		ResultSet rs = pst.executeQuery();		
		while(rs.next()) {
	
	%>
         <tr>
	        <td> <%= rs.getString(1) %></td>
			<td> <%= rs.getString(2) %></td>
			<td> <%= rs.getString(3) %></td>
			<td> <%= rs.getString(4) %></td>
			<td> <%= rs.getString(5) %></td>
         </tr>
   <%
	} 
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	%>
      </table>

   </section>

   <footer>
      <div class="item">(주)장&김 비디오가게</div>
      <div class="item">IG : CRAVIDS </div>
      <div class="item"> 22811, NEW YORK CITY, NYC, USA </div>
   </footer>
</div>
</body>
</html>