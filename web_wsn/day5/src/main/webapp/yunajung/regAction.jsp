<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    String c_id = request.getParameter("c_id");
    String name = request.getParameter("name");
    String tel = request.getParameter("tel");
    String jumin = request.getParameter("jumin");
    String genre = request.getParameter("genres");

    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:testdb2";
    String user = "scott";
    String password = "tiger";
    
    boolean blank = true; // 입력 값 유효성 여부를 저장할 변수
    boolean dupe = false; 
    
    if (c_id == null || name == null || tel == null || jumin == null || genre == null ||
        c_id.isEmpty() || name.isEmpty() || tel.isEmpty() || jumin.isEmpty() || genre.isEmpty()) {
        blank = false;
    }
    
    if (blank) {
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, user, password);

            String checkSql = "SELECT COUNT(*) AS count FROM cust0mer_tbl WHERE c_id = ?";
            PreparedStatement checkPst = con.prepareStatement(checkSql);
            checkPst.setString(1, c_id);
            ResultSet rs = checkPst.executeQuery();
            if (rs.next()) {
                int count = rs.getInt("count");
                if (count > 0) {
                    dupe = true; 
                }
            }
            
            if (!dupe) {
                String insertSql = "INSERT INTO cust0mer_tbl(c_id, name, tel, jumin, genre) VALUES(?, ?, ?, ?, ?)";
                PreparedStatement pst = con.prepareStatement(insertSql);
                
                pst.setString(1, c_id);
                pst.setString(2, name);
                pst.setString(3, tel);
                pst.setString(4, jumin);
                pst.setString(5, genre);
                
                pst.executeUpdate();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    } else {
        blank = false; 
    }
    
    if (!blank) {
        out.println("<script>alert('모든 정보를 입력해주세요.');</script>");
        out.println("<script>history.back();</script>");
    } else if (dupe) {
        out.println("<script>alert('이미 등록된 고객코드입니다. 다른 코드를 입력해주세요.');</script>");
        out.println("<script>history.back();</script>");
    } else {
        response.sendRedirect("listC.jsp");
    }
%>
