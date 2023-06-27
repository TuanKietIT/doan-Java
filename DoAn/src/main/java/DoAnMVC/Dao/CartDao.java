package DoAnMVC.Dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import DoAnMVC.Entity.Cart;
import DoAnMVC.Entity.MapperSanPham;
import DoAnMVC.Entity.SanPham;

@Repository
public class CartDao {
	
	@Autowired
	public JdbcTemplate  _jdbcTemplate;
	
	private String SqlSanPham(long id) {
		String sql =("SELECT * FROM sanpham WHERE id ="+ id);
		return sql.toString();
	}
	public SanPham FindIDSanPham(long id){
		String sql =SqlSanPham(id);
		SanPham sanpham = _jdbcTemplate.queryForObject(sql, new MapperSanPham());
		return sanpham;
	}
	
	public HashMap<Long,Cart> AddCart(long id, HashMap<Long,Cart> cart) {
		Cart itemC = new Cart();
		SanPham sanpham = FindIDSanPham(id);
		if(sanpham != null && cart.containsKey(id)) {
			itemC = cart.get(id);
			itemC.setSoluong(itemC.getSoluong() + 1);
			itemC.setTongtien(itemC.getSoluong() * itemC.getSanpham().getGiaban() );
		}
		else {
			itemC.setSanpham(sanpham);
			itemC.setSoluong(1);
			itemC.setTongtien(sanpham.getGiaban());
		}
		cart.put(id, itemC);
		
		return cart;
	}
	public HashMap<Long,Cart> EditCart(long id,int soluong, HashMap<Long,Cart> cart) {
		if(cart == null) {
			return cart;
		}
		Cart itemC = new Cart();
		if(cart.containsKey(id)) {
			itemC = cart.get(id);
			itemC.setSoluong(soluong);
			float tongtien = soluong * itemC.getSanpham().getGiaban();
			itemC.setTongtien(tongtien);
		}
		cart.put(id, itemC);
		
		return cart;
	}
	public HashMap<Long,Cart> DeleteCart(long id, HashMap<Long,Cart> cart) {
		if(cart == null) {
			return cart;
		}
		if(cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}
	
	public HashMap<Long,SanPham> Delete(long id, HashMap<Long,SanPham> sanpham) {
		if(sanpham == null) {
			return sanpham;
		}
		if(sanpham.containsKey(id)) {
			sanpham.remove(id);
		}
		return sanpham;
	}
	
	public int TongSoLuong(HashMap<Long, Cart> cart) {
		int tong = 0;
		for(Map.Entry<Long, Cart> itemC : cart.entrySet()) {
			tong += itemC.getValue().getSoluong();
		}
		return tong;
	}
	
	public float TongTien(HashMap<Long, Cart> cart) {
		float tong = 0;
		for(Map.Entry<Long, Cart> itemC : cart.entrySet()) {
			tong += itemC.getValue().getTongtien();
		}
		return tong;
	}
}
