package com.myDemo3.dao;

import java.util.List;

import com.myDemo3.model.User;

public interface UserDao {

	public int saveUser(User u);

	public int updateUser(User u);

	public int deleteUser(User u);

	public User getUserbyEmail_Id(String email_Id);

	public List<User> getUsers();
}
