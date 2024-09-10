package infomediary.repository;
import java.util.List;

import infomediary.model.User;

public interface UserRepository {
	public List<User> validateUser(User u);

	public boolean addUser(User u);


}
