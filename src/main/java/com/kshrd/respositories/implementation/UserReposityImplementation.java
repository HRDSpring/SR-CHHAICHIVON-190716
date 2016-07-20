package com.kshrd.respositories.implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kshrd.model.User;
import com.kshrd.respositories.UserRepository;

@Repository
public class UserReposityImplementation  implements UserRepository{

	@Autowired
	private DataSource dataSource; // get data source	
	private Connection cnn; // declare connection
	
	@Override
	public ArrayList<User> findUsers() {
		String sql = "SELECT "
				+ "	  id, "
				+ "	  username, "
				+ "	  cl_room "
				+ "	  FROM "
				+ "	  tbluser;";
		ArrayList<User> arr = new ArrayList<User>();
		User user = null;
		try{
			cnn = dataSource.getConnection();
			PreparedStatement ps = cnn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setCl_room(rs.getString("cl_room"));
				arr.add(user);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return arr;
	}

	@Override
	public boolean updateUser(User user) {
		String sql = "UPDATE "
				+ "		TBLUSER "
				+ "	  SET  "
				+ "		username=? , "
				+ "		cl_room=? "
				+ "	  WHERE "
				+ "		id=?";
		try{
			cnn = dataSource.getConnection();
			PreparedStatement ps = cnn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getCl_room());
			ps.setInt(3, user.getId());
			if(ps.executeUpdate() > 0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean insertUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}
}
