package DoAnMVC.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DoAnMVC.Dao.HomeDao;
import DoAnMVC.Entity.Admin;

@Controller
public class HomeController {
	@Autowired
	HomeDao homeDao;
	
	@RequestMapping(value = { "/" , "/trang-chu" })
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("sanpham", homeDao.getDataSPView());
		mv.addObject("sanpham1", homeDao.getDataSPView1());
		mv.addObject("sanphames", homeDao.getDataSPView2());
		mv.addObject("theloai",homeDao.getDataLoai());
		mv.addObject("sanphams",homeDao.getDataSP());
		return mv;
	}
	@RequestMapping(value = {"/san-pham/{id}"})
	public ModelAndView product(@PathVariable String id) {
		ModelAndView mv = new ModelAndView("user/product");
		mv.addObject("id_loai",id);
		mv.addObject("sanpham",homeDao.getData());
		return mv;
	}
	@RequestMapping(value = "/san-pham")
	public ModelAndView product() {
		ModelAndView mv = new ModelAndView("user/product");
		mv.addObject("sanpham",homeDao.getData());
		mv.addObject("theloai",homeDao.getDataLoai());
		return mv;
	}
	
	@RequestMapping(value = "/tin-tuc")
	public ModelAndView Tintuc() {
		ModelAndView mv = new ModelAndView("user/tintuc");
		mv.addObject("tintuc",homeDao.getDataTinTuc());
		mv.addObject("theloai",homeDao.getDataLoai());
		return mv;
	}
	@RequestMapping(value = "/chi-tiet/{id}")
	public ModelAndView Chitiet(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("user/chitiet");
		mv.addObject("sanpham", homeDao.getCTSanPham(id));
		mv.addObject("theloai",homeDao.getDataLoai());
		return mv;
	}
	@RequestMapping(value = "/Loai-San-Pham/{id}")
	public ModelAndView LoaiSanPham(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("user/LoaiSanPham");
		mv.addObject("sanpham", homeDao.getSanPhamLoai(id));
		mv.addObject("theloai",homeDao.getDataLoai());
		return mv;
	}
	@RequestMapping(value = "/Loai/{id}")
	public ModelAndView LoaiSanPham2(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("user/LoaiSP");
		mv.addObject("sanpham", homeDao.getSanPhamLoai(id));
		mv.addObject("theloai",homeDao.getDataLoai());
		return mv;
	}
	
	@RequestMapping(value = "/gioi-thieu")
	public ModelAndView GioiThieu() {
		ModelAndView mv = new ModelAndView("user/gioithieu");
		return mv;
	}
	
	@RequestMapping(value = "/lien-he")
	public ModelAndView LienHe() {
		ModelAndView mv = new ModelAndView("user/LienHe");
		return mv;
	}
    
	@RequestMapping(value = "/trang-san-pham" ,method = RequestMethod.GET)
	public ModelAndView PhanTrang2() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/product");
		mv.addObject("sanpham",homeDao.PhanTrang1());
		mv.addObject("theloai",homeDao.getDataLoai());
		mv.addObject("admin",new Admin());
		return mv;
	}
	
	@RequestMapping(value = "/trang-san-pham-2" ,method = RequestMethod.GET)
	public ModelAndView PhanTrangAD() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/product");
		mv.addObject("sanpham",homeDao.PhanTrang2());
		mv.addObject("theloai",homeDao.getDataLoai());
		mv.addObject("admin",new Admin());
		return mv;
	}
	


}
