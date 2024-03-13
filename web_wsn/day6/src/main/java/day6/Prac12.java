package day6;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 책정보 여러개를 응답하는 서비스 만들기
// 서블릿, view ,  책정보여러개(데이터 -> 모델) ( 클래스 => 서비스클래스  )


 @WebServlet("/prac12")
public class Prac12  extends HttpServlet {

	  @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		  //
		  
		  //처리 
		  //책정보여러개
		  Prac12Service service = new Prac12Service();
		  ArrayList<Book> list  =service.getBookList();
		  
		  System.out.println( list.size() );
		  //응답 
		  
		  
		  // Model  모델 심기
		  request.setAttribute("list", list);
		  
		  // view forward  view거쳐서 응답되도록 함 
		  request.getRequestDispatcher("WEB-INF/views/booklist.jsp").forward(request, response);
		  
		  
	}
}
