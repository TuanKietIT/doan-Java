package DoAnMVC.Dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import DoAnMVC.Entity.Bills;
import DoAnMVC.Entity.BillsSP;
import DoAnMVC.Entity.Cart;
import DoAnMVC.Entity.MapperUser;
import DoAnMVC.Entity.SanPham;
import DoAnMVC.Entity.Users;



@Repository
public class CheckDao {

	@Autowired
	public JdbcTemplate  _jdbcTemplate;
	
	public int AddBills(Bills bills) {
		
		return AddBill(bills);
	}
	public  void AddBillsSP(HashMap<Long, Cart> carts){
	    
		long idBills = GetIdLastBills();
		for(Map.Entry<Long, Cart> itemCart :carts.entrySet()) {
			BillsSP billsSP = new BillsSP();
			billsSP.setId_bills(idBills);
			billsSP.setId_sanpham(itemCart.getValue().getSanpham().getId());
			billsSP.setSoluong(itemCart.getValue().getSoluong());
			billsSP.setTongtien(itemCart.getValue().getTongtien());
			AddBillsSP(billsSP);
			
		}
		
	}
	
	public int AddBill(Bills bills) {
		String sql =("INSERT INTO bills (hoten,email,sodienthoai,diachi,ghichu,tongtien,soluong)VALUES('"+bills.getHoten()+"','"+bills.getEmail()+"','"+bills.getSodienthoai()+"','"+bills.getDiachi()+"','"+bills.getGhichu()+"','"+bills.getTongtien()+"','"+bills.getSoluong()+"');");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public long GetIdLastBills() {
		String sql ="SELECT MAX(id) FROM bills"; 
        long id = _jdbcTemplate.queryForObject(sql, new Object[] {} ,Long.class);
		return id;
	}
	
	public int AddBillsSP(BillsSP billsp) {
		String sql =("INSERT INTO billdetail (id_sanpham,id_bills,soluong,tongtien)VALUES('"+billsp.getId_sanpham()+"','"+billsp.getId_bills()+"','"+billsp.getSoluong()+"','"+billsp.getTongtien()+"');");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}
