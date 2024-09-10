package infomediary.controller;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import infomediary.model.User;
import infomediary.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService serv;

	@RequestMapping(value = "/validUser")
	public String validateUser(User u) {
		serv.validUser(u);
		if (u.getTypeid()==1)
			return "guest";
		else if (u.getTypeid()==2)
			return "admin";
		else
			return "Invalid login";
	}

	@RequestMapping(value = "/register")
	public String newUser(User u) {
		return "register";
	}

	@RequestMapping(value = "/addUser")
	public String addUser(User u, Map map) {
		if (serv.newUser(u))
			map.put("msg", "New User added");
		else
			map.put("msg", "Unable to add user");
		return "register";
	}

}
