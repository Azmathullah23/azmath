package com.crud.dao;

import java.util.List;

import com.crud.entity.Customer;

public interface DaoInterface {

	public List<Customer> getCustomer();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

	public void deleteAllCustomers();
}
