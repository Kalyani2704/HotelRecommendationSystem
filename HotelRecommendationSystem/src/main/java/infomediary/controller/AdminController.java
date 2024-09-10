package infomediary.controller;

import java.io.*;
import java.util.*;
import javax.servlet.annotation.MultipartConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import infomediary.model.Hotel;
import infomediary.model.Reviews;
import infomediary.model.User;
import infomediary.service.AdminService;
import infomediary.service.HotelService;

@Controller
@MultipartConfig
public class AdminController {
	@Autowired
	HotelService serv;
	AdminService adserv;

	@RequestMapping("/uploadImage")
	public String uploadImage(@RequestParam("image") MultipartFile file, RedirectAttributes redirectAttributes) {
		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload.");
			return "redirect:uploadStatus";
		}
		String uploadPath = "D:/Springboot/HotelRecommendationSystem/src/main/images/";

		try {
			String imageFileName = file.getOriginalFilename();
			System.out.println("Selected Image File Name : " + imageFileName);

			File uploadDir = new File(uploadPath);
			if (!uploadDir.exists()) {
				uploadDir.mkdirs();
			}
			File outputFile = new File(uploadPath + imageFileName);
			try (FileOutputStream fos = new FileOutputStream(outputFile); InputStream is = file.getInputStream()) {
				byte[] data = new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
			}
			redirectAttributes.addFlashAttribute("message", "You successfully uploaded '" + imageFileName + "'.");

		} catch (IOException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("message", "File upload failed: " + e.getMessage());
		}
		return "redirect:/uploadStatus";
	}

	@RequestMapping("/newHotel")
	public String newHotel(Map m) {
		List<Hotel> clist = serv.selectCity();
		List<Hotel> rtlist = serv.selectRoomType();
		List<Hotel> amlist = serv.selectAmenities();
		List<Hotel> slist = serv.selectServices();
		m.put("clist", clist);
		m.put("rtlist", rtlist);
		m.put("amlist", amlist);
		m.put("slist", slist);
		return "hotel";
	}

	@RequestMapping("/addHotel")
	public String addHotel(Hotel h, Map map) {
		if (serv.newHotel(h))
			map.put("msg", "New Hotel added");
		else
			map.put("msg", "Unable to add hotel");
		return "hotel";
	}

	@RequestMapping("/getAreas")
	public String getAreas(@RequestParam("cityId") Integer cid, Map map) {
		List<Hotel> alist = serv.selectArea(cid);
		map.put("alist", alist);
		return "hotel";
	}

	public List<Hotel> getHotels() {
		List<Hotel> list = serv.getHotels();
		return list;
	}

	@RequestMapping("/viewHotel")
	public String viewHotels(Map map) {
		map.put("list", this.getHotels());
		return "viewHotels";
	}

	public List<User> getCustomers() {
		List<User> glist = adserv.getCustomers();
		return glist;
	}

	@RequestMapping("/viewCustomer")
	public String viewGuests(Map m) {
		m.put("glist", this.getCustomers());
		return "viewCustomers";
	}

	@RequestMapping("/delHotelById")
	public String deleteHotelById(@RequestParam("hotel_id") Integer hid, Map map) {
		adserv.delHotelById(hid);
		map.put("list", this.getHotels());
		return "viewHotels";
	}

	@RequestMapping("/updtHotelById")
	public String updateHotelById(@RequestParam("hotel_id") Integer hid, Map map) {
		adserv.updHotelById(hid);
		map.put("list", this.getHotels());
		return "viewHotels";
	}

	@RequestMapping("/delGuestById")
	public String deleteGuestById(@RequestParam("guest_id") Integer gid, Map map) {
		adserv.delGuestById(gid);
		map.put("glist", this.getCustomers());
		return "viewCustomers";
	}

	@RequestMapping("/updtGuestById")
	public String updateGuestById(@RequestParam("guest_id") Integer gid, Map map) {
		adserv.updtGuestById(gid);
		map.put("glist", this.getCustomers());
		return "viewCustomers";
	}

	@RequestMapping("/searchByName")
	public String searchByName(@RequestParam("n") String name, Map map) {
		System.out.println(name);
		map.put("list", this.getHotels());
		return "viewHotels";
	}

	public List<Reviews> getFeedback() {
		List<Reviews> flist = adserv.getFeedback();
		return flist;
	}

	@RequestMapping("/viewFeedback")
	public String viewFeedback(Map m) {
		m.put("flist", this.getFeedback());
		return "viewFeedback";
	}

	@RequestMapping("/delFeedbackById")
	public String deleteFeedbackById(@RequestParam("feedback_id") Integer fid, Map map) {
		adserv.delFeedbackById(fid);
		map.put("flist", this.getFeedback());
		return "viewFeedback";
	}
}
