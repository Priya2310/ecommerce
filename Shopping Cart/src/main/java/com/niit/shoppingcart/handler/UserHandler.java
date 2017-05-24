package com.niit.shoppingcart.handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.niit.shoppingcart.domain.User;

@Component
public class UserHandler 
{
	public String validate(@ModelAttribute("user")User user,MessageContext messageContext)
	{
		String status="success";
		if(user.getId().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("id").defaultText("Email ID cannot be empty").build());
			status="failure";
		}
		if(user.getName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("name").defaultText("Name cannot be empty").build());
			status="failure";
		}
		if((user.getContact().length())!=10)
		{
			messageContext.addMessage(new MessageBuilder().error().source("contact").defaultText("contact Number should be of 10 digits").build());
			status="failure";
		}
		if((user.getPassword().length())<5)
		{
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("Password should of minimum length 5").build());
			status="failure";
		}
		return status;
	}
}
