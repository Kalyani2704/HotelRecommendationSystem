package infomediary.service;
import java.util.List;
import infomediary.model.Reviews;
import infomediary.model.User;

public interface AdminService {
	public void delHotelById(int hid);

	public void updHotelById(int hid);

	public List<User> getCustomers();

	public void delGuestById(int gid);

	public void updtGuestById(int gid);

	public List<Reviews> getFeedback();

	public void delFeedbackById(int fid);
}
