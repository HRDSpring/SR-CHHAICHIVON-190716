package com.kshrd.services;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kshrd.model.User;


@Service
public interface UserService {
		//getall user
		public ArrayList<User> findUsers();
		//update user
		public boolean updateUser(User user);
		//insert user
		public boolean insertUser(User user);
		//insert user
		public boolean deleteUser(int  userId);
}
