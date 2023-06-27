package DoAnMVC.Entity;

public class BillsSP {
	private long id;
	private long id_sanpham;
	private long id_bills;
	private double tongtien;
	private int soluong;
	
	public BillsSP() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public long getId_sanpham() {
		return id_sanpham;
	}

	public void setId_sanpham( long id_sanpham) {
		this.id_sanpham = id_sanpham;
	}

	public long getId_bills() {
		return id_bills;
	}

	public void setId_bills( long id_bills) {
		this.id_bills = id_bills;
	}

	public double getTongtien() {
		return tongtien;
	}

	public void setTongtien(double tongtien) {
		this.tongtien = tongtien;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	

}
