package com.kshrd.respositories;

import java.util.ArrayList;

import com.kshrd.model.User;

public interface UserRepository {
	//getall user
	public ArrayList<User> findUsers();
	//update user
	public boolean updateUser(User user);
	//insert user
	public boolean insertUser(User user);
}
