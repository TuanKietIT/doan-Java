package DoAnMVC.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperUser implements RowMapper<Users>  {
	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		Users user = new Users();
		user.setId(rs.getInt("id"));
		user.setHoten(rs.getString("hoten"));
		user.setTaikhoan(rs.getString("taikhoan"));
		user.setMatkhau(rs.getString("matkhau"));
		user.setEmail(rs.getString("email"));
		user.setSodienthoai(rs.getInt("sodienthoai"));
		user.setDiachi(rs.getString("diachi"));
		return user;
	}
}
