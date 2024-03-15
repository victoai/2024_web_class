package day9;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet("/food3")
public class FoodServlet3  extends HttpServlet  {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter  out  =response.getWriter();
		
		
		ArrayList<Food> list = new ArrayList<>();		
		list.add(new Food("스파게티","13000"));
		list.add( new Food("돈까스","9000"));
		list.add( new Food ("비빔밥","11000"));
		
		
		//
		
		JSONArray arr = new JSONArray();		
		for( int i=0 ; i < list.size() ; i++) {
			Food food = list.get(i);
			JSONObject o = new  JSONObject();
			o.put("name", food.getName());
			o.put("price" ,food.getPrice());			
			arr.put(o);			
		}
				
		
		out.println(  arr);
		
		
	}
}
