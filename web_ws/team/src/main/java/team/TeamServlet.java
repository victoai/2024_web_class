package team;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/team")
public class TeamServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 
		//이름목록 준비하기 : 배열이 아닌 ArrayList로 준비함, 삭제를 편리하게 하기 위함
		//조원으로 선택된 이름은 제거되어야 함  ( 똑같은 사람은 다른 조에 또 편성되면 안됨)
         ArrayList<String > names= new ArrayList<>();
         /*
          * 
 강지훈
김기엽
김수진
김연수
김예원
김종범
박범준
서원덕
양홍섭
여민혜
유원준
윤라영
윤성진
이건희
이민재
장유나
정기원
최환석
함현지
          * 
          */
         names.add("강지훈");
         names.add("김기엽");
         names.add("김수진");
         names.add("김연수");
         names.add("김에원");
         names.add("김종범");
         names.add("박범준");
         names.add("서원덕");
         names.add("양홍섭");
         names.add("여민혜");
         names.add("유원준");
         names.add("윤라영");
         names.add("윤성진");
         names.add("이건희");
         names.add("이민재");
         names.add("장유나");
         names.add("정기원");
         names.add("최환석");
         names.add("함현지");
       
     
		
		  /*
		   * 0. Hashmap생성하기 (4개조를 담을  Map생성:  각 조 정보  set을 여러개 담기 위함  )
		   * 1.반복
		   *   1.1 조원이름을 담을 각 Hashset 생성 (중복되는 이름이 담기지 않도록 set사용)
		   *   1.2 반복(4명의 조원이 담길 때 까지)
		   *      - 난수발생
		   *      - 이름목록에서 난수번째 이름을 set에 담는다
		   *      - 이름목록에서 이름 삭제함		    
		   *   1.3 각 조원명단을 map에 저장
		   * 
		   * 
		   */
         
		
		 Random r = new Random();		 
		 HashMap<Integer , HashSet<String>> teams  = new HashMap<>(); // key -value 값을 저장할 수 있음 (검색에 용이함)
		
		 //4개조 
		 for( int i=1; i<=4 ;i++) { 
			 // 각 조원이름을 담을 HashSet 생성
			 HashSet<String>  teamNames = new HashSet<>();	
			 while(teamNames.size() <4) {   //4명이 담길때 까지 반복한다
			 	int index  =r.nextInt( names.size());		
			 	teamNames.add(names.get(index));
			 	names.remove(index);
			 }
			 teams.put(i, teamNames);
		 }
		 
		 System.out.println( teams);
		 
		 //만들어진 Map정보 ( 각 조원들의 명단 정보를 view로 forword함)		  
		 request.setAttribute("result", teams);
		 request.getRequestDispatcher("WEB-INF/views/teamResult.jsp").forward(request, response); 
		
		
	}
	
}
