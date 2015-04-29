package wjteam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.RowSet;

import wjteam.orm.Message;
import wjteam.orm.User;

public class MessageDao {
	private Connection con = null;
	private PreparedStatement psmt =null;
	public MessageDao() {
		this.con = SQLConnection.getConnection();
	}
	public boolean addMessage(Message msg) {
		boolean flag = true;
		String sql = "insert into message(author,title,content,location,messageid) values(?,?,?,?,?)";
		try {
			psmt = this.con.prepareStatement(sql);
			psmt.setString(1, msg.getAuthor());
			psmt.setString(2, msg.getTitle());
			System.out.println(msg.getContent());
			psmt.setString(3, msg.getContent());
			psmt.setString(4, msg.getLocation());
			psmt.setString(5, msg.getMessageId());
			psmt.execute();
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
	public String getTitles(int curr) {
		ArrayList<String> result = new ArrayList<String>();
		String sql = "select title from message order by messageid limit ";
		int tmp = (curr - 1) * 6;
		sql = sql + tmp + "," + "6";
		System.out.println(sql);
		try {
			psmt = this.con.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			while(rs.next()) {
				result.add(rs.getString("title"));
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
		String str = RowSetToJson(result, curr, 6);
		System.out.println(str);
		return str;
	}
	
    private static String RowSetToJson(ArrayList<String> rt,int count,int pageCount){
   	 StringBuilder sb=new StringBuilder();
   	 try {
			 sb.append("{\"pageCount\":\""+count+"\",\"pageData\":");
			 sb.append("[");
			 for(int i = 0; i < rt.size(); i++){
					 if(i != rt.size() - 1){
						 sb.append("\""+rt.get(i)+"\",");
					 }else{
						 sb.append("\""+rt.get(i)+"\"");
					 }
				 }
			 sb.append("]}");
			 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   	 return sb.toString();
    }
}
