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
		String sql = "insert into message(author,title,content,location,messageid,authorid) values(?,?,?,?,?,?)";
		try {
			psmt = this.con.prepareStatement(sql);
			psmt.setString(1, msg.getAuthor());
			psmt.setString(2, msg.getTitle());
			psmt.setString(3, msg.getContent());
			psmt.setString(4, msg.getLocation());
			psmt.setString(5, msg.getMessageId());
			psmt.setString(6, msg.getAuthorId());
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
	public int getNum() {
		String sql = "SELECT count(*) number FROM message";
		int result = 0;
		try {
			psmt = this.con.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			result = rs.getInt("number");
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
		return result;
	}
	public String getTitles(int curr) {
		ArrayList<String> titles = new ArrayList<String>();
		ArrayList<String> authors = new ArrayList<String>();
		String sql = "select title, authorid from message order by messageid limit ";
		String sqln = "SELECT count(*) FROM message";
		int count = 0;
		int tmp = (curr - 1) * 15;
		sql = sql + tmp + "," + "15";
		System.out.println(sql);
		try {
			psmt = this.con.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			while(rs.next()) {
				titles.add(rs.getString("title"));
				authors.add(rs.getString("authorid"));
			}
			psmt = this.con.prepareStatement(sqln);
			rs = psmt.executeQuery();
			rs.next();
			count = rs.getInt(1);
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
		String str = RowSetToJson(titles, authors, count, 15);
		System.out.println(str);
		return str;
	}
	
    private static String RowSetToJson(ArrayList<String> titles, ArrayList<String> authors, int count,int pageCount){
   	 StringBuilder sb=new StringBuilder();
   	 try {
			 sb.append("{\"pageCount\":\""+count+"\",\"pageData\":");
			 sb.append("[");
			 for(int i = 0; i < titles.size(); i++){
					 if(i != titles.size() - 1){
						 sb.append("{\"title\":\""+titles.get(i)+"\","); 
						 sb.append("\"author\":\""+authors.get(i)+"\"},");  

					 }else{
						 sb.append("{\"title\":\""+titles.get(i)+"\","); 
						 sb.append("\"author\":\""+authors.get(i)+"\"}");					 }
				 }
			 sb.append("]}");
			 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   	 return sb.toString();
    }
}
