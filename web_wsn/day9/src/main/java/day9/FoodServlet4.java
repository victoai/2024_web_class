package day9;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

@WebServlet("/food4")
public class FoodServlet4  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out=  response.getWriter();
		
		//model
		
		FoodService service = new FoodService();
		JSONArray   list=service.getFoodList();
		
				
		//응답
		out.println(list); 
	}
}
