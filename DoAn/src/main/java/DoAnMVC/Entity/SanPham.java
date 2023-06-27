package DoAnMVC.Entity;

import java.sql.Date;

public class SanPham {
	private int id;
	private int id_loai;
	private String tensanpham;
	private float giaban;
	private String img;
	private String tieude;
	private String mota;
	private Date ngaytao;
	private Date ngaycapnhat;
	public SanPham() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_loai() {
		return id_loai;
	}
	public void setId_loai(int id_loai) {
		this.id_loai = id_loai;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public float getGiaban() {
		return giaban;
	}
	public void setGiaban(float giaban) {
		this.giaban = giaban;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTieude() {
		return tieude;
	}
	public void setTieude(String tieude) {
		this.tieude = tieude;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public Date getNgaytao() {
		return ngaytao;
	}
	public void setNgaytao(Date ngaytao) {
		this.ngaytao = ngaytao;
	}
	public Date getNgaycapnhat() {
		return ngaycapnhat;
	}
	public void setNgaycapnhat(Date ngaycapnhat) {
		this.ngaycapnhat = ngaycapnhat;
	}
	

}
