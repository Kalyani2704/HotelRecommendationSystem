package infomediary.service;
import java.util.List;
import infomediary.model.Hotel;
import infomediary.model.Reviews;
import infomediary.model.User;

public interface HotelService {
	public boolean newHotel(Hotel h);
	public List<Hotel> selectArea(int cid);
	public List<Hotel> selectCity();
	public List<Hotel> selectRoomType();
	public List<Hotel> getHotels();
	public List<Hotel> selectAmenities();
	public List<Hotel> selectServices();
	public boolean newArea(int cid, String name);
	public boolean newCity(Hotel h);
	public boolean newRoom(Hotel h);
	public boolean newAmenity(Hotel h);
	public boolean newService(Hotel h);
}
