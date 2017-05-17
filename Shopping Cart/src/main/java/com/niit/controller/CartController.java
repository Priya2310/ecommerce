package com.niit.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.MyCart;
import com.niit.shoppingcart.domain.Product;

@Controller
public class CartController 
{
	Logger log=LoggerFactory.getLogger(CartController.class);
	@Autowired MyCartDAO mycartDAO;
	@Autowired MyCart mycart;
	@Autowired ProductDAO productDAO;
	@Autowired HttpSession session;
	
	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String myCart(Model model) {
		log.debug("Starting of the method myCart");
		//model.addAttribute("myCart", mycart);
		// get the logged-in user id 
		//if you added the loggedInUserID in session
		/*String loggedInUserid = (String) session.getAttribute("loggedInUserID");*/
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String loggedInUserid = auth.getName();
		if(loggedInUserid!=null)
		{
		
		int cartSize = mycartDAO.list(loggedInUserid).size();
		log.debug("Cart size is: "+cartSize);

		if (cartSize == 0) {
			model.addAttribute("errorMessage", "You do not have any products in your Cart");
		} else {
			model.addAttribute("mycart", mycart);
			model.addAttribute("cartList", mycartDAO.list(loggedInUserid));
			model.addAttribute("totalAmount", mycartDAO.getTotalAmount(loggedInUserid));
			model.addAttribute("displayCart", "true");
			model.addAttribute("cart",mycart);

		}
		
		}
		log.debug("Ending of the method myCart");
		return "MyCart";
	}

	// For add and update myCart both
	@RequestMapping(value = "/myCart/add/{id}", method = RequestMethod.GET)
	public ModelAndView addToCart(@PathVariable("id") String id) {
		log.debug("Starting of the method addToCart");
		// get the product based on product id
		Product product = productDAO.getProductById(id);
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		if (loggedInUserid == null) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			loggedInUserid = auth.getName();
		}
		
		mycart.setPrice(product.getPrice());
		mycart.setProduct_name(product.getName());
		mycart.setUser_id(loggedInUserid);
		//It is not required if you given default value while creating the table
		mycart.setStatus('N'); // Status is New. Once it is Purschaed/order
		                     // changed to 'P'  O
		mycart.setQuantity(1);
		mycart.setDate_added( new Date(System.currentTimeMillis()));
		
		//To get sequence number, you can do programmatically in DAOImpl
		//myCart.setId(ThreadLocalRandom.current().nextLong(100, 1000000 + 1));

		//check same product is added earlier.
		session.setAttribute("isAdmin", "false");
		mycartDAO.save(mycart);
	
		// return "redirect:/views/home.jsp";

		ModelAndView mv = new ModelAndView("redirect:/Home");
		mv.addObject("successMessage", " Successfuly add the product to myCart");
		int cartSize=mycartDAO.list(loggedInUserid).size();
		session.setAttribute("cartSize", cartSize);
		log.debug("Ending of the method addToCart");
		return mv;

	}
	
	@RequestMapping("/myCart/delete/{id}")
	public ModelAndView removeFromCart(@PathVariable("id") int id) {
		log.debug("Starting of removeFromCart in CartController");

		ModelAndView mv = new ModelAndView("redirect:/MyCart");
		// Check whether products are there for this category or not

		if (mycartDAO.delete(id) == true) {
			mv.addObject("cartMessage", "Successfullly deleted from cart");
		} else {
			mv.addObject("cartMessage", "Failed to delete from cart");
		}
		
		String loggedInUserID = (String) session.getAttribute("loggedInUserID");
		int cartSize = mycartDAO.list(loggedInUserID).size();
		session.setAttribute("cartSize", cartSize);

		log.debug("Ending of removeFromCart in CartController");
		return mv;

	}
	
	@RequestMapping("/checkout")
	public String checkout()
	{
		return "payment";
	}
}
