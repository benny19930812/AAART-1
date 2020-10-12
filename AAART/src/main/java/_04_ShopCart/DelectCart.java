package _04_ShopCart;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DelectCart
 */
@WebServlet("/DelectCart")
public class DelectCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HashSet<HashMap>  cartlist =(HashSet<HashMap>) request.getSession().getAttribute("cartlist");
		Map cartmap =new HashMap();
		cartmap.remove("title"); 
		
//		System.out.println(cartmap);
//		cartlist.add(cartmap);// 將map集合放入list集合
//		System.out.println("放入集合");
//		for (Map map_1 : cartlist) {
//			System.out.println(map_1);
//		}	
//		
//		
//		session.setAttribute("cartlist", cartlist);// 将list放入request中

		RequestDispatcher dispatcher = request.getRequestDispatcher("/_04_ShopCart/_04_ShoppingCart.jsp");
		dispatcher.forward(request, response);		
		

}

}