<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table{

margin:0 auto;
border:1px solid black;
border-collapse: collapse;

}

td{
border:1px solid black;
}
</style>
</head>
<body>


<table>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>

<%
 
	Connection con=null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	try{ 
		//데이터베이스 연결정보
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:testdb";
		String user="scott";
		String password="tiger";
		
		 
		Class.forName(driver); 		 
		con= DriverManager.getConnection(url, user, password);		  
		String sql ="insert into t values(?) ";
		 
		
		java.util.Date cur = new  java.util.Date();;
		 
		System.out.println( sql);
		pst = con.prepareStatement(sql) ;
		pst.setDate(1,   new  java.sql.Date( cur.getTime() ));	 
		 
		pst.executeUpdate();
		 
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{ //자원의 반납
		if( rs!= null) rs.close();
		if( pst != null) pst.close();
		if( con != null) con.close();
	}
	%>	 
</table>

</body>
</html>