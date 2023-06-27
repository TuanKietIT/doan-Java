package DoAnMVC.Entity;

import java.sql.Date;

public class tintuc {
	private int id;
	private String 	tentieude;
	private String  Mota;
	private String  anh;
	private Date ngaycapnhat;
	public tintuc() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTentieude() {
		return tentieude;
	}
	public void setTentieude(String tentieude) {
		this.tentieude = tentieude;
	}
	public String getMota() {
		return Mota;
	}
	public void setMota(String mota) {
		Mota = mota;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Date getNgaycapnhat() {
		return ngaycapnhat;
	}
	public void setNgaycapnhat(Date ngaycapnhat) {
		this.ngaycapnhat = ngaycapnhat;
	}
	
}
