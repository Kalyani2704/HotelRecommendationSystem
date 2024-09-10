package infomediary.service;
import java.util.List;

import infomediary.model.User;

public interface UserService {
	public List<User> validUser(User u);
	public boolean newUser(User u);

}
