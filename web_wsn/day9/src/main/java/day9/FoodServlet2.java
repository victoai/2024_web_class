package day9;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

@WebServlet("/food2")
public class FoodServlet2  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		 		
		
		response.setCharacterEncoding("utf-8");
	//	response.setContentType("text/html;charset=utf-8");
		response.setContentType("application/json;charset=utf-8");	
		
		PrintWriter out =response.getWriter();
		Food food =new Food("스파게티","13000");
		
		//자바객체  -> json 형태 변환 ( 라이브러리 사용)		
		JSONObject  o  =new JSONObject();
		o.put("name", food.getName());
		o.put("price", food.getPrice());   //  "{ \"name\":\"스파게티\", \"price\": \"13000\"  }"
		
		
		out.println( o);
				
		
		
	}
}
