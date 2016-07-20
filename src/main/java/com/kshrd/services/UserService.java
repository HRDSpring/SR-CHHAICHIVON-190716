package com.kshrd.services;

import java.util.ArrayList;

import com.kshrd.model.User;

public interface UserService {
		//getall user
		public ArrayList<User> findUsers();
		//update user
		public boolean updateUser(User user);
		//insert user
		public boolean insertUser(User user);
}
