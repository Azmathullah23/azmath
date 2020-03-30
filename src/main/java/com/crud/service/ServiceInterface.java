package com.crud.service;

import java.util.List;

import com.crud.entity.Customer;

public interface ServiceInterface {
	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomers(int theId);

	public void deleteCustomer(int theId);

	public void deleteAllCustomer();

}
