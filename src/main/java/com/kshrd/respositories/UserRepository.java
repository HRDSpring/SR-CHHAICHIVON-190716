package com.kshrd.respositories;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.kshrd.model.User;

@Repository
public interface UserRepository {
	//getall user
	public ArrayList<User> findUsers();
	//update user
	public boolean updateUser(User user);
	//insert user
	public boolean insertUser(User user);
}
