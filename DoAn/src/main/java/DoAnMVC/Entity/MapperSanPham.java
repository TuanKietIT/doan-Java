package DoAnMVC.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSanPham implements RowMapper<SanPham> {

	public SanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		SanPham sp = new SanPham();
		sp.setId(rs.getInt("id"));
		sp.setId_loai(rs.getInt("id_loai"));
		sp.setTensanpham(rs.getString("tensanpham"));
		sp.setGiaban(rs.getFloat("giaban"));
		sp.setImg(rs.getString("img"));
		sp.setTieude(rs.getString("tieude"));
		sp.setMota(rs.getString("mota"));
		sp.setNgaytao(rs.getDate("ngaytao"));
		sp.setNgaycapnhat(rs.getDate("ngaycapnhat"));
		return sp;
	}
	
}
