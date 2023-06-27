package DoAnMVC.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperTinTuc implements RowMapper<tintuc>  {
	public tintuc mapRow(ResultSet rs, int rowNum) throws SQLException {
		tintuc tt = new tintuc();
		tt.setId(rs.getInt("id"));
		tt.setTentieude(rs.getString("tentieude"));
		tt.setMota(rs.getString("mota"));
		tt.setAnh(rs.getString("anh"));
		tt.setNgaycapnhat(rs.getDate("ngaycapnhat"));
		return tt;
	}
}
       
