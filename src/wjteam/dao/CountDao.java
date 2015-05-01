package wjteam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CountDao {
	private Connection con = null;
	private PreparedStatement psmt =null;
	public CountDao() {
		this.con = SQLConnection.getConnection();
	}
	
	public boolean addOne(String state) {
		String sql = "update locationcount set count=count+1 where state=" + "'" + state + "'";
		boolean flag = true;
		try {
			psmt = this.con.prepareStatement(sql);
			flag = psmt.execute();
		} catch(Exception e) {
			e.printStackTrace();
			flag = false;
		} finally {
			try {
				psmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
				flag = false;
			}
			try {
				con.close();
			} catch(SQLException e) {
				e.printStackTrace();
				flag = false;
			}
		}
		
		return flag;
	}
	
	public String getCount() {
		ArrayList<String> states = new ArrayList<String>();
		ArrayList<String> counts = new ArrayList<String>();
		String sql = "select state,count from locationcount";
	    String result = null;
	    try {
		    psmt = this.con.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			while(rs.next()) {
				states.add(rs.getString("state"));
				counts.add(rs.getString("count"));
			}
	    } catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				psmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			try {
				con.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	    String str = RowSetToJson(states, counts);
		System.out.println(str);
		return str;
	}
	private static String RowSetToJson(ArrayList<String> states, ArrayList<String> counts) {
	   	 StringBuilder sb=new StringBuilder();
	   	 try {
			sb.append("{\"countData\":");
				 sb.append("[");
				 for(int i = 0; i < states.size(); i++){
						 if(i != states.size() - 1){
							 sb.append("{\"state\":\"" + states.get(i) + "\","); 
							 sb.append("\"count\":\"" + counts.get(i) + "\"},");  
 
						 }else{
							 sb.append("{\"state\":\"" + states.get(i) + "\","); 
							 sb.append("\"count\":\"" + counts.get(i) + "\"}");					 }
					 }
				 sb.append("]}");
				 
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	   	 return sb.toString();
	}
}
