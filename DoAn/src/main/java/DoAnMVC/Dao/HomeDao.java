package DoAnMVC.Dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import DoAnMVC.Entity.Cart;
import DoAnMVC.Entity.MapperLoai;
import DoAnMVC.Entity.MapperSanPham;
import DoAnMVC.Entity.MapperTinTuc;
import DoAnMVC.Entity.MapperUser;
import DoAnMVC.Entity.SanPham;
import DoAnMVC.Entity.Users;
import DoAnMVC.Entity.theloai;
import DoAnMVC.Entity.tintuc;

@Repository
public class HomeDao {
	@Autowired
	public JdbcTemplate  _jdbcTemplate;
	@Autowired
	private CartDao cartDao = new CartDao();
	
	public List<SanPham> getData(){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql ="SELECT * FROM sanpham LIMIT 9";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> getDataSPView(){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql ="SELECT * FROM sanpham LIMIT 0,6";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> getDataSPView1(){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql ="SELECT * FROM sanpham LIMIT 3";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> getDataSPView2(){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql ="SELECT * FROM sanpham LIMIT 3,3";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	public List<SanPham> PhanTrang1(){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql =("SELECT * FROM sanpham LIMIT 0,9");
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	public List<SanPham> PhanTrang2(){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql =("SELECT * FROM sanpham LIMIT 9,3");
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	public List<SanPham> PhanTrang3(){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql =("SELECT * FROM sanpham LIMIT 12,20");
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	public List<SanPham> getDataSP(){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql ="SELECT * FROM sanpham LIMIT 4";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
    
	public Object getDataLoai() {
		List<theloai> list = new ArrayList<theloai>();
		String sql ="SELECT * FROM theloai";
		list = _jdbcTemplate.query(sql, new MapperLoai());
		return list;
	}
	
	public Object getDataUser() {
		List<Users> list = new ArrayList<Users>();
		String sql ="SELECT * FROM users";
		list = _jdbcTemplate.query(sql, new MapperUser());
		return list;
	}

	public Object getDataTinTuc() {
		List<tintuc> list = new ArrayList<tintuc>();
		String sql ="SELECT * FROM tintuc";
		list = _jdbcTemplate.query(sql, new MapperTinTuc());
		return list;
	}
	private String SqlSanPham(int id) {
		String sql =("SELECT * FROM sanpham WHERE 1 = 1 AND id_loai = " + id);
		return sql.toString();
	}
	
	
	
	
	public List<SanPham> getonSanPhamID( int id){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql =SqlSanPham(id);
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	private String SqlCTSanPham(int id) {
		String sql =("SELECT * FROM sanpham WHERE id ="+ id);
		return sql.toString();
	}
	
	private String SqlSanPhamLoai(int id) {
		String sql =("SELECT * FROM sanpham WHERE id_loai ="+ id);
		return sql.toString();
	}

	
	
	public List<SanPham> getSanPhamLoai(int id){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql =SqlSanPhamLoai(id);
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> getCTSanPham(int id){
		List<SanPham> list = new ArrayList<SanPham>();
		String sql =SqlCTSanPham(id);
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	private String SqlSanPham(long id) {
		String sql =("SELECT * FROM sanpham WHERE id ="+ id);
		return sql.toString();
	}
	
	public SanPham FindIDSanPham(long id){
		String sql =SqlSanPham(id);
		SanPham sanpham = _jdbcTemplate.queryForObject(sql, new MapperSanPham());
		return sanpham;
	}
	

	public HashMap<Long,Cart> AddCart(long id, HashMap<Long,Cart> cart){
		return cartDao.AddCart(id, cart);
	}
	public HashMap<Long,Cart> EditCart(long id,int soluong, HashMap<Long,Cart> cart) {
		return cartDao.EditCart(id, soluong, cart);
	}
	public HashMap<Long,Cart> DeleteCart(long id, HashMap<Long,Cart> cart) {
       return cartDao.DeleteCart(id, cart);
	}
	public int TongSoLuong(HashMap<Long, Cart> cart) {
		return cartDao.TongSoLuong(cart);
	}
	
	public float TongTien(HashMap<Long, Cart> cart) {
		return cartDao.TongTien(cart);
	}
	
}
