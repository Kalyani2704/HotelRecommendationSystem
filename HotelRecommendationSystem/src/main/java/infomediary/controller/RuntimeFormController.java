package infomediary.controller;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import infomediary.model.Hotel;
import infomediary.service.HotelService;

@Controller
public class RuntimeFormController {
	@Autowired
	HotelService serv;

	@RequestMapping(value = "/addCity", method = RequestMethod.POST)
	public String addCity(Hotel h, Map map) {
		if (serv.newCity(h)) {
			List<Hotel> clist = serv.selectCity();
			map.put("clist", clist);
			map.put("cmsg", "New City added");
		} else
			map.put("cmsg", "Unable to add city");
		return "hotel";
	}

	@RequestMapping(value = "/addArea", method = RequestMethod.GET)
	public String  addArea(@RequestParam("cityId") Integer cid, @RequestParam("area") String area, Map map) {
	    if (serv.newArea(cid, area)) {
			List<Hotel> alist = serv.selectArea(cid);
			map.put("alist", alist);
			map.put("amsg", "New area added");
		} else
			map.put("amsg", "Unable to add area");
		return "hotel";
	}

	@RequestMapping(value = "/addRoom", method = RequestMethod.POST)
	public String addRoom(Hotel h, Map map) {
		if (serv.newRoom(h)) {
			List<Hotel> rtlist = serv.selectRoomType();
			map.put("rtlist", rtlist);
			map.put("rmsg", "New room-type added");
		} else
			map.put("rmsg", "Unable to add room-type");
		return "hotel";
	}

	@RequestMapping(value = "/addAmenity", method = RequestMethod.POST)
	public String addAmenity(Hotel h, Map map) {
		if (serv.newAmenity(h)) {
			List<Hotel> amlist = serv.selectAmenities();
			map.put("amlist", amlist);
			map.put("ammsg", "New amenity added");
		} else
			map.put("ammsg", "Unable to add amenity");
		return "hotel";
	}

	@RequestMapping(value = "/addService", method = RequestMethod.POST)
	public String addService(Hotel h, Map map) {
		if (serv.newService(h)) {
			List<Hotel> slist = serv.selectServices();
			map.put("slist", slist);
			map.put("smsg", "New service added");
		} else
			map.put("smsg", "Unable to add service");
		return "hotel";
	}

	/*
	 * @RequestMapping(value = "/newCity") public String addCity() { return
	 * "addCity"; }
	 * 
	 * @RequestMapping(value = "/newArea") public String addArea(Map map) {
	 * List<Hotel> clist = serv.selectCity(); map.put("clist", clist); return
	 * "addArea"; }
	 *
	 * @RequestMapping(value = "/newRoom") public String addRoom() { return
	 * "addRoom"; }
	 * 
	 * @RequestMapping(value = "/newAmenity") public String addAmenity() { return
	 * "addAmenity"; }
	 * 
	 * @RequestMapping(value = "/newService") public String addService() { return
	 * "addService"; }
	 */

}
