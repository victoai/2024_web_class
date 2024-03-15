package day9;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

public class FoodService {
	
	FoodDAO dao = new FoodDAO();
		
	
	public JSONArray  getFoodList() {			
		ArrayList<Food>  list  =dao.getFoodList();		
		
		JSONArray arr = new JSONArray();		
		for( int i=0 ; i < list.size() ; i++) {
			Food food = list.get(i);
			JSONObject o = new  JSONObject();
			o.put("name", food.getName());
			o.put("price" ,food.getPrice());			
			arr.put(o);			
		}
		
		return arr;
		
	}	
	
	
	public static void main(String[] args) {
		FoodService service  = new FoodService();
		JSONArray list  = service.getFoodList();		
		System.out.println( list);
		 
	}
	

}
