package infomediary.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;
import infomediary.model.Hotel;
import infomediary.model.Reviews;
import infomediary.model.User;

@Repository
public class HotelRepositoryImpl implements HotelRepository {
	@Autowired
	JdbcTemplate template;
	@Autowired
	SimpleJdbcCall jdbcCall;

	@Override
	public List<Hotel> selectArea(int id) {
		List<Hotel> list = template.query("select area_name from areamaster where city_id=" + id, new RowMapper() {
			@Override
			public Hotel mapRow(ResultSet rs, int rowNum) throws SQLException {
				Hotel h = new Hotel();
				h.setArea_name(rs.getString(1));
				return h;
			}
		});
		return list.size() > 0 ? list : null;
	}

	@Override
	public List<Hotel> selectCity() {
		List<Hotel> list = template.query("select * from citymaster", new RowMapper<Hotel>() {
			@Override
			public Hotel mapRow(ResultSet rs, int rowNum) throws SQLException {
				Hotel h = new Hotel();
				h.setCity_id(rs.getInt(1));
				h.setCity_name(rs.getString(2));
				return h;
			}
		});
		return list.size() > 0 ? list : null;
	}

	@Override
	public List<Hotel> selectRoomType() {
		List<Hotel> list = template.query("select * from room", new RowMapper<Hotel>() {
			@Override
			public Hotel mapRow(ResultSet rs, int rowNum) throws SQLException {
				Hotel h = new Hotel();
				h.setRoom_id(rs.getInt(1));
				h.setRoom_type(rs.getString(2));
				return h;
			}
		});
		return list.size() > 0 ? list : null;
	}

	@Override
	public boolean newHotel(final Hotel h) {
		int value1 = template.update(
				"INSERT INTO hotelmaster(hotel_id,hotel_name,address,area_id,price) VALUES (0, ?, ?, ?, ?)",
				new PreparedStatementSetter() {
					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, h.getHotel_name());
						ps.setString(2, h.getAddress());
						ps.setInt(3, h.getArea_id());
						ps.setInt(4, h.getPrice());
					}
				});

		int value2 = template.update("INSERT INTO hotelroomjoin VALUES (0, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, h.getRoom_id());
			}
		});

		int value3 = template.update("INSERT INTO hotelamenityjoin VALUES (0, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, h.getAmenity_id());
			}
		});

		int value4 = template.update("INSERT INTO hotelservicejoin VALUES (0, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, h.getService_id());
			}
		});

		return (value1 > 0 && value2 > 0 && value3 > 0 && value4 > 0) ? true : false;
	}

	@Override
	public List<Hotel> selectAmenities() {
		List<Hotel> list = template.query("select * from amenities", new RowMapper<Hotel>() {
			@Override
			public Hotel mapRow(ResultSet rs, int rowNum) throws SQLException {
				Hotel h = new Hotel();
				h.setAmenity_id(rs.getInt(1));
				h.setAmenity(rs.getString(2));
				return h;
			}
		});
		return list.size() > 0 ? list : null;
	}

	@Override
	public List<Hotel> selectServices() {
		List<Hotel> list = template.query("select * from services", new RowMapper<Hotel>() {
			@Override
			public Hotel mapRow(ResultSet rs, int rowNum) throws SQLException {
				Hotel h = new Hotel();
				h.setService_id(rs.getInt(1));
				h.setService(rs.getString(2));
				return h;
			}
		});
		return list.size() > 0 ? list : null;
	}

	@Override
	public List<Hotel> getHotels() {
		List<Hotel> list = template.query("select *from hotelmaster", new RowMapper<Hotel>() {

			@Override
			public Hotel mapRow(ResultSet rs, int rowNum) throws SQLException {
				Hotel h = new Hotel();
				h.setHotel_id(rs.getInt(1));
				h.setHotel_name(rs.getString(2));
				h.setAddress(rs.getString(3));
				h.setArea_id(rs.getInt(4));
				h.setPrice(rs.getInt(5));
				return h;
			}
		});
		return list.size() > 0 ? list : null;
	}

	@Override
	public boolean newRoom(final Hotel h) {
		int value = template.update("insert into room values('0', ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, h.getRoom_type());
			}
		});
		return value > 0 ? true : false;
	}

	@Override
	public boolean newAmenity(final Hotel h) {
		int value = template.update("insert into amenities values('0', ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, h.getAmenity());
			}
		});
		return value > 0 ? true : false;
	}

	@Override
	public boolean newService(final Hotel h) {
		int value = template.update("insert into services values('0', ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, h.getService());
			}
		});
		return value > 0 ? true : false;
	}
	

	@Override
	public boolean newCity(final Hotel h) {
		
		int value = template.update("insert into citymaster values('0', ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, h.getCity_name());
			}
		});
		return value > 0 ? true : false;
	}

	@Override
	public boolean newArea(final int cid, final String name) {
		System.out.println(name);
		int value = template.update("insert into areamaster values('0', ?, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, name);
				ps.setInt(2, cid);
			}
		});
		return value > 0 ? true : false;
	}
}
