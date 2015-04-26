package wjteam.dao;

import java.sql.*;

import wjteam.orm.User;

public class UserDao {
	private Connection con = null;
	private PreparedStatement psmt =null;
	public UserDao() {
		this.con = SQLConnection.getConnection();
	}
	
	public boolean addUser(User user) {
		boolean flag = true;
		String sql = "insert into userinfo(email,userid,pwd) values(?,?,?)";
		try {
			psmt = this.con.prepareStatement(sql);
			psmt.setString(1, user.getEmail());
			psmt.setString(2, user.getUserId());
			psmt.setString(3, user.getPassword());
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
	
	public boolean modifyUser(User user){
		boolean flag = true;
		String sql = "update info set userid=?,pwd=?, where id="+user.getEmail()+"";
		try{
			psmt = this.con.prepareStatement(sql);
			psmt.setString(1, user.getUserId());
			psmt.setString(2,user.getPassword());
			psmt.execute();
		}catch(Exception e){
			e.printStackTrace();
			flag = false;

		}finally{
			try{
				psmt.close();
			}catch(SQLException e){
				e.printStackTrace();
				flag = false;
			}
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
				flag = false;
			}
		} 
		return flag;
	}
	
	public User getUser(String userEmail){
		ResultSet rs = null;
		String sql = "select * from userinfo where email=\""+userEmail+"\"";
		User user = new User();
		try {
			psmt = this.con.prepareStatement(sql);
			rs = psmt.executeQuery();
			rs.beforeFirst();
			while(rs.next()) {
				user.setEmail(rs.getString("email"));
				user.setUserId(rs.getString("userid"));
				user.setPassword(rs.getString("pwd"));	
				user.setMessageCount(Integer.valueOf(rs.getString("messagecount")));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				psmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		} 
		return user;		
	}
	
	public boolean deleteUser(String userEmail){
		boolean del =false;
		String sql = "delete from userinfo where id="+userEmail;
		try{
			psmt = this.con.prepareStatement(sql);
			del=psmt.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				psmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return del;  
	}
}
