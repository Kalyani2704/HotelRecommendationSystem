package infomediary.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import infomediary.model.Reviews;
import infomediary.model.User;
import infomediary.repository.AdminRepository;

@Service("adserv")
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminRepository repo;
	
	@Override
	public void delHotelById(int hid) {
		repo.delHotelById(hid);
	}

	@Override
	public void updHotelById(int hid) {
		repo.updtHotelById(hid);
	}

	@Override
	public List<User> getCustomers() {
		return repo.getCustomers();
	}

	@Override
	public void delGuestById(int gid) {
		repo.delGuestById(gid);
	}

	@Override
	public void updtGuestById(int gid) {
		repo.updtGuestById(gid);
	}

	@Override
	public List<Reviews> getFeedback() {
		return repo.getFeedback();
	}

	@Override
	public void delFeedbackById(int fid) {
		repo.delFeedbackById(fid);
	}
}
