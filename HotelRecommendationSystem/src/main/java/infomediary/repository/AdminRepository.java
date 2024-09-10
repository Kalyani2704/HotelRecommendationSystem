package infomediary.repository;
import java.util.List;
import infomediary.model.Reviews;
import infomediary.model.User;

public interface AdminRepository {

	void delGuestById(int gid);

	void updtGuestById(int gid);

	List<User> getCustomers();

	void updtHotelById(int hid);

	void delHotelById(int hid);

	List<Reviews> getFeedback();

	void delFeedbackById(int fid);

}
