package ua.controller.user;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.bind.support.SessionStatus;

import ua.entity.Role;
import ua.entity.User;
import ua.service.ProductService;
import ua.service.UserService;
import ua.validator.UserValidator;

@Controller
@RequestMapping("/")
public class IndexController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	@ModelAttribute("userForm")
	public User getForm(){
		return new User();
	}

	
	@InitBinder("userForm")
	protected void initBinder(WebDataBinder binder) {
//		binder.registerCustomEditor(User.class, new UserEditor(userService));
		binder.setValidator(new UserValidator(userService));
	}
	
	

	@RequestMapping("/")
	public String index(Model model
			, @CookieValue(defaultValue="0", name="userId") int id, HttpServletResponse response
			){
		System.out.println("11111111111111111");
		System.out.println(id);
		System.out.println("222222222222");
		if(id==0){
			id = userService.createNewUser();
			System.out.println(id);
			response.addCookie(new Cookie("userId", String.valueOf(id)));
			System.out.println("333333333333333");
/*			userService.findOne(id).setUsername("TempUser"+id);
			userService.findOne(id).setEmail(id+"temp@mail.com");
			userService.findOne(id).setPassword("TempPassword"+id);
			System.out.println(userService.findOne(id).getId());
			System.out.println(userService.findOne(id).getUsername());*/
		}
		System.out.println("44444444444444444");
//		model.addAttribute("products", productService.findAll());
		return "user-index";
	}
	
/*	@GetMapping("/shopping")
	public String shopping(Model model, @CookieValue(defaultValue="0", name="userId") int userId){
		model.addAttribute("products", productService.findByUserId(userId));
		return "user-shopingCartUnit";
//		return "user-shopping";
	}*/
	
/*	@GetMapping("/buy/{productId}")
	public String buy(@CookieValue(defaultValue="0", name="userId") int userId, @PathVariable int productId){
		userService.addToShoppingCart(userId, productId);
		return "redirect:/";
	}*/
	
	@RequestMapping("/admin")
	public String admin(){
		return "admin-admin";
	}
	
	@RequestMapping("/login")
	public String login(){
		
		return "user-login";
	}
	
	@RequestMapping("/registration")
	public String registration(Model model){
		model.addAttribute("userForm", new User());
		return "user-registration";
	}
	
	@RequestMapping(value="/registration", method=POST)
	public String registration(@ModelAttribute("userForm") @Valid User user, BindingResult br, SessionStatus status, Model model){
	
		if(br.hasErrors()){
			model.addAttribute("users", userService.findAll());
			return "user-registration";
		}
		userService.save(user);
		status.setComplete();
		return "redirect:/login";
	}
	

}