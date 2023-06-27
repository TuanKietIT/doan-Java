package DoAnMVC.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperThuongHieu implements RowMapper<thuonghieu>  {
	public thuonghieu mapRow(ResultSet rs, int rowNum) throws SQLException {
		thuonghieu th = new thuonghieu();
		th.setId(rs.getInt("id"));
		th.setTenthuonghieu(rs.getString("tenthuonghieu"));
		
		return th;
	}

}
