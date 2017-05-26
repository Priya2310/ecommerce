package com.niit.shoppingcart.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.niit.shoppingcart.dao.AddressDAO;
import com.niit.shoppingcart.domain.Address;

@Component
public class AddressHandler 
{
	@Autowired AddressDAO addressDAO;
	
	public Address initFlow(){
		return new Address();
	}
	
	public boolean addAddress(Address address)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String loggedInUserid = auth.getName();
		address.setUserid(loggedInUserid);
		address.setLine1(address.getLine1());
		address.setLine2(address.getLine2());
		address.setCity(address.getCity());
		address.setPincode(address.getPincode());
		addressDAO.save(address);
		return true;
	}
}
