package infomediary.repository;
import java.util.List;
import infomediary.model.Hotel;
import infomediary.model.Reviews;
import infomediary.model.User;

public interface HotelRepository {
	boolean newHotel(Hotel h);
	List<Hotel> selectArea(int id);
	List<Hotel> selectCity();
	List<Hotel> selectRoomType();
	List<Hotel> getHotels();
	List<Hotel> selectAmenities();
	List<Hotel> selectServices();
	boolean newArea(int cid, String name);
	boolean newCity(Hotel h);
	boolean newRoom(Hotel h);
	boolean newAmenity(Hotel h);
	boolean newService(Hotel h);
}
