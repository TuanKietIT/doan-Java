package DoAnMVC.Entity;

public class Cart {
	private int soluong;
	private float tongtien;
	private SanPham sanpham;

	
	public Cart() {
		
	}
	
	public Cart(int soluong, float tongtien, SanPham sanpham) {
		this.soluong = soluong;
		this.tongtien = tongtien;
		this.sanpham = sanpham;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public float getTongtien() {
		return tongtien;
	}

	public void setTongtien(float tongtien) {
		this.tongtien = tongtien;
	}

	public SanPham getSanpham() {
		return sanpham;
	}

	public void setSanpham(SanPham sanpham) {
		this.sanpham = sanpham;
	}
}
