package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import day2.ALib;


@WebServlet("/ysh")
public class 라이브러리사용하기 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		PrintWriter out  =response.getWriter();

		ALib a = new ALib();
		String[] result = a.getMessageFighting();

		for (String m : result) {
			out.println( m +"<br>");
		}		
		out.close();

	}
}
