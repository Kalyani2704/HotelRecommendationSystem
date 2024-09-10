package infomediary.repository;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import infomediary.model.User;

@Repository
public class UserRepositoryImpl implements UserRepository{
	@Autowired
	JdbcTemplate template;
	
	@Override
	public boolean addUser(final User u) {
		int value= template.update("insert into user_details values('0', ?, ?, ?, ?, ?, ?)", new PreparedStatementSetter(){
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, u.getFname());
				ps.setString(2, u.getLname());
				ps.setString(3, u.getContact());
				ps.setString(4, u.getEmail());
				ps.setString(5, u.getPassword());
				ps.setInt(6, u.getTypeid());
			}			
		});
		return value>0?true:false;
	}
	
	@Override
	public List<User> validateUser(final User u) {
		 List<User> list= template.query("select typeid from user_details where email=? && password=?", new PreparedStatementSetter(){
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					ps.setString(1, u.getEmail());
					ps.setString(2, u.getPassword());
				}
			}, new RowMapper() {
				@Override
				public User mapRow(ResultSet rs, int rowNum) throws SQLException {
					u.setTypeid(rs.getInt("typeid"));
					return u;
				}
			});
		return (list.size()>0?list:null);
	}

}
