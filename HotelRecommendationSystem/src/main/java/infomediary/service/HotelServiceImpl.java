package infomediary.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import infomediary.model.Hotel;
import infomediary.model.Reviews;
import infomediary.model.User;
import infomediary.repository.HotelRepository;

@Service
public class HotelServiceImpl implements HotelService{
	@Autowired
	HotelRepository repo;

	@Override
	public boolean newHotel(Hotel h) {
		return repo.newHotel(h);
	}

	@Override
	public List<Hotel> selectArea(int id) {
		return repo.selectArea(id);
	}

	@Override
	public List<Hotel> selectCity() {
		return repo.selectCity();
	}

	@Override
	public List<Hotel> selectRoomType() {
		return repo.selectRoomType();
	}

	@Override
	public List<Hotel> getHotels() {
		return repo.getHotels();
	}

	@Override
	public List<Hotel> selectAmenities() {
		return repo.selectAmenities();
	}

	@Override
	public List<Hotel> selectServices() {
		return repo.selectServices();
	}

	@Override
	public boolean newArea(int cid, String name) {
		return repo.newArea(cid, name);
	}

	@Override
	public boolean newCity(Hotel h) {
		return repo.newCity(h);
	}

	@Override
	public boolean newRoom(Hotel h) {
		return repo.newRoom(h);
	}

	@Override
	public boolean newAmenity(Hotel h) {
		return repo.newAmenity(h);
	}

	@Override
	public boolean newService(Hotel h) {
		return repo.newService(h);
	}
}
