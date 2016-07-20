package com.kshrd.services.implementation;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.kshrd.model.User;
import com.kshrd.respositories.UserRepository;
import com.kshrd.services.UserService;

@Service
public class UserServiceImplementation implements UserService{

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public ArrayList<User> findUsers() {
		return userRepository.findUsers();
	}

	@Override
	public boolean updateUser(User user) {		
		return userRepository.updateUser(user);
	}

	@Override
	public boolean insertUser(User user) {		
		return userRepository.insertUser(user);
	}

	@Override
	public boolean deleteUser(int userId) {
		// TODO Auto-generated method stub
		return false;
	}

}
