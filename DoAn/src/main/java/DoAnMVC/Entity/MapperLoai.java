package DoAnMVC.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperLoai implements RowMapper<theloai>  {
	public theloai mapRow(ResultSet rs, int rowNum) throws SQLException {
		theloai l = new theloai();
		l.setId(rs.getInt("id"));
		l.setTenloai(rs.getString("tenloai"));
		
		return l;
	}
}
