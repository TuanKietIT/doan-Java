package DoAnMVC.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperAdmin implements RowMapper<Admin>  {
	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		Admin ad = new Admin();
		ad.setId(rs.getInt("id"));
		ad.setTaikhoan(rs.getString("taikhoan"));
		ad.setMatkhau(rs.getString("matkhau"));
		ad.setHoten(rs.getString("hoten"));
		return ad;
	}
}
