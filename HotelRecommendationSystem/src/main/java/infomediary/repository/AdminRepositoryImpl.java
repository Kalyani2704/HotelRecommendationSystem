package infomediary.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import infomediary.model.Reviews;
import infomediary.model.User;

@Repository
public class AdminRepositoryImpl implements AdminRepository {
	@Autowired
	JdbcTemplate template;

	@Override
	public void delHotelById(int hid) {
		template.update("delete from hotelmaster where hotel_id=" + hid);
	}

	@Override
	public void updtHotelById(int hid) {
		template.update("update hotelmaster set price=? where hotel_id=" + hid);
	}

	@Override
	public List<User> getCustomers() {
		List<User> list = template.query("select *from guestmaster", new RowMapper<User>() {
			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User u = new User();
				u.setGuest_id(rs.getInt(1));
				u.setFname(rs.getString(2));
				u.setLname(rs.getString(3));
				u.setContact(rs.getString(4));
				u.setEmail(rs.getString(5));
				return u;
			}
		});
		return list.size() > 0 ? list : null;
	}

	@Override
	public void delGuestById(int gid) {
		template.update("delete from guestmaster where guest_id=" + gid);
	}

	@Override
	public void updtGuestById(int gid) {
		template.update("update guestmaster set email=? where guest_id=" + gid);
	}

	@Override
	public List<Reviews> getFeedback() {
		List<Reviews> list = template.query(
				"select f.feedback_id, g.guest_fname, g.guest_lname, h.hotel_name, f.ratings, f.reviews from guestmaster g inner join feedback f on g.guest_id= f.guest_id inner join hotelmaster h on f.hotel_id=h.hotel_id",
				new RowMapper<Reviews>() {
					@Override
					public Reviews mapRow(ResultSet rs, int rowNum) throws SQLException {
						Reviews r = new Reviews();
						r.setFeedback_id(rs.getInt(1));
						r.setFname(rs.getString(2));
						r.setLname(rs.getString(3));
						r.setHotel_name(rs.getString(4));
						r.setRatings(rs.getInt(5));
						r.setReviews(rs.getString(6));
						return r;
					}
				});
		return list.size() > 0 ? list : null;
	}

	@Override
	public void delFeedbackById(int fid) {
		template.update("delete from feedback where feedback_id=" + fid);
	}
}
