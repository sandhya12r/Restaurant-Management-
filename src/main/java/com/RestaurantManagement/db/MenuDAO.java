package com.RestaurantManagement.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import demo.Items;

public class MenuDAO {
	private static final String INSERT_ITEMS_SQL = "insert into items values(?,?,?)";
	private static final String SELECT_ITEMS_BY_ID = "select id, itemName, price from items where id = ?";
	private static final String SELECT_ALL_ITEMS = "select * from items";
	private static final String DELETE_ITEMS_SQL = "delete from items where id = ?";
	private static final String UPDATE_ITEMS_SQL = "update items set itemName = ?, price = ? where id = ?";
	
	public void insertItem(Items item) throws SQLException, ClassNotFoundException{
		try (Connection connection=DbConnection.init();
			PreparedStatement ps=connection.prepareStatement(INSERT_ITEMS_SQL)){
			ps.setInt(1,item.getId());
			ps.setString(2,item.getName());
			ps.setInt(3, item.getPrice());
			ps.executeUpdate();
		}
		catch(SQLException e) {
			printSQLException(e);
		}
	}
	
	public Items selectItem(int id) throws ClassNotFoundException  {
		Items item=null;
		try (Connection connection=DbConnection.init();
				PreparedStatement ps=connection.prepareStatement(SELECT_ITEMS_BY_ID);){
			ps.setInt(1, id);
			System.out.println(ps);
			ResultSet res=ps.executeQuery();
			while(res.next()) {
				String name=res.getString("itemName");
				int price=res.getInt("price");
				item = new Items(id,name,price);
			}
		}
		catch(SQLException e) {
			printSQLException(e);
			//e.printStackTrace();
		}
		return item;
	}
	
	public List<Items> selectAllItems() throws ClassNotFoundException{
		List <Items> items=new ArrayList<>();
		
		try (Connection connection=DbConnection.init();
			PreparedStatement ps=connection.prepareStatement(SELECT_ALL_ITEMS);){
			ResultSet res=ps.executeQuery();
			while(res.next()) {
				int id=res.getInt("id");
				String name=res.getString("itemName");
				int price=res.getInt("price");
				items.add(new Items(id,name,price));
			}
		}
		catch(SQLException e) {
			printSQLException(e);
		}
		return items;
	}
	public boolean deleteItem(int id) throws SQLException, ClassNotFoundException{
		boolean rowDeleted;

		try (Connection connection=DbConnection.init();
			PreparedStatement pst=connection.prepareStatement(DELETE_ITEMS_SQL);){
			pst.setInt(1,id);
			rowDeleted=pst.executeUpdate()>0;
		}
		return rowDeleted;
	}
	
	public boolean updateItem(Items item) throws SQLException, ClassNotFoundException{
		boolean rowUpdated;

		try (Connection connection=DbConnection.init();
			PreparedStatement pst=connection.prepareStatement(UPDATE_ITEMS_SQL);){
			pst.setString(1,item.getName());
			pst.setInt(2,item.getPrice());
			pst.setInt(3,item.getId());
			rowUpdated=pst.executeUpdate()>0;
		}
		return rowUpdated;
	}


	private void printSQLException(SQLException ex) {
		for(Throwable e:ex) {
			if(e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: "+ ((SQLException) e).getSQLState());
				System.err.println("Error Code: "+ ((SQLException) e).getErrorCode());
				System.err.println("Message: "+ e.getMessage());
				Throwable t=ex.getCause();
				while(t!=null) {
					System.out.println("Cause: " + t);
					t=t.getCause();
				}
			}
			
		}
	}
}
