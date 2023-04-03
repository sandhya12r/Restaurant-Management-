package com.RestaurantManagement.admin.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RestaurantManagement.db.MenuDAO;

import demo.Items;


@WebServlet("/")
public class MenuServlet extends HttpServlet{
	private static final long serialVersionUID= 1L;
	private MenuDAO menuDAO;
	
	public void init() throws ServletException {
		menuDAO = new MenuDAO();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getServletPath();
		
		try {
			switch(action) {
			case "/new":
				showNewForm(request,response);
				break;
			case "/insert":
				insertItem(request,response);
				break;
			case "/delete":
				deleteItem(request,response);
				break;
			case "/edit":
				showEditForm(request,response);
				break;
			case "/update":
				updateItem(request,response);
				break;
			default:
				listItem(request,response);
			}
		}
		catch(ClassNotFoundException | SQLException ex) {
			throw new ServletException(ex);
		}
	}
	
	private void listItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
		List<Items> listItem = menuDAO.selectAllItems();
		request.setAttribute("listItem", listItem);
		RequestDispatcher dispatcher=request.getRequestDispatcher("MenuList.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		RequestDispatcher dispatcher=request.getRequestDispatcher("MenuForm.jsp");
		dispatcher.forward(request, response);

	}
	
	private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException  {
		int id=Integer.parseInt(request.getParameter("id"));
		Items existingItem=menuDAO.selectItem(id);		
		RequestDispatcher dispatcher=request.getRequestDispatcher("MenuForm.jsp");
		request.setAttribute("item", existingItem);
		dispatcher.forward(request, response);

	}
	
	private void insertItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException  {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		int price=Integer.parseInt(request.getParameter("price"));	
		
		Items newItem=new Items(id,name,price);
		menuDAO.insertItem(newItem);
		response.sendRedirect("list");
	}
	
	private void deleteItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException  {	
		int id=Integer.parseInt(request.getParameter("id"));
		menuDAO.deleteItem(id);
		response.sendRedirect("list");
	}
	
	private void updateItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException  {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		int price=Integer.parseInt(request.getParameter("price"));		
		
		Items book=new Items(id,name,price);
		menuDAO.updateItem(book);	
		response.sendRedirect("list");
	}

}
