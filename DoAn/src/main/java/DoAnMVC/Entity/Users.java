package DoAnMVC.Entity;

public class Users {
    
	private int id;
	private String hoten;
	private String taikhoan;
	private String matkhau;
	private String email;
	private int sodienthoai; 
	private String diachi;
	public Users() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSodienthoai() {
		return sodienthoai;
	}
	public void setSodienthoai(int sodienthoai) {
		this.sodienthoai = sodienthoai;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
    
	
}
