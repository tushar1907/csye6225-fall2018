package com.csye6225.Cloud.UserLogin.dao;

import org.springframework.data.repository.CrudRepository;

import com.csye6225.Cloud.UserLogin.entity.Transaction;

public interface TransactionDao extends CrudRepository<Transaction, String>{

}