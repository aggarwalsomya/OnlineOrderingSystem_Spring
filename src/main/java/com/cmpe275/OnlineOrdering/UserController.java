package com.cmpe275.OnlineOrdering;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class UserController {

	public final String MAINCOURSE = "maincourse";
	public final String DESERT = "desert";
	public final String APPETIZER = "appetizer";
	public final String DRINK = "drink";
	
	@Autowired
	private UserService userSvc;

	/**
	 * get data request for some menu name will be mapped here
	 * @return It will return the required view
	 */
	@RequestMapping(value = "/Menu/displayMenuItems", method = RequestMethod.POST)
	public String getData(HttpServletRequest request, Model model) {
		String category = request.getParameter("category");
		List<MenuItem> mi = userSvc.getMenuItems(category);

		if (mi == null) {
			model.addAttribute("category",category);
			return "ErrorFindMenuItem_User";
		}
	
		model.addAttribute("list", mi);
		
		return "GetUserMenuItems";
	}
	
	public String getDataForEachCategory(Model model) {
		String category[] = {MAINCOURSE,DRINK,DESERT,APPETIZER};
		for(int i = 0; i < category.length; i++) {
			List<MenuItem> mi = userSvc.getMenuItems(category[i]);		
			model.addAttribute("list_"+category[i].toString(), mi);
		}
		return "GetUserMenuItems";
	}
	
	
	public String getEarliestPickUpTime() {
		
		return "";
	}
	
	@RequestMapping(value = "/Menu", method = RequestMethod.GET)
	/**
	 * returns the home page
	 * @return
	 */
	public String home() {
		return "DisplayUserMenu";
	}
}