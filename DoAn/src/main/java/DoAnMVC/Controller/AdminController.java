package DoAnMVC.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import DoAnMVC.Dao.AdminDao;
import DoAnMVC.Dao.HomeDao;
import DoAnMVC.Dao.UserDao;
import DoAnMVC.Entity.Admin;
import DoAnMVC.Entity.SanPham;


@Controller
public class AdminController {
     
	@Autowired
	AdminDao adminDao;
	@Autowired
	HomeDao homeDao;
	@Autowired
	UserDao user;
	
	@RequestMapping(value = "/admin" ,method = RequestMethod.GET)
	public ModelAndView Admin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/index");
		mv.addObject("admin",new Admin());
		return mv;
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public ModelAndView DangNhap(HttpSession session,@ModelAttribute("admin") Admin admins) {
		ModelAndView mv = new ModelAndView();
		admins = adminDao.CheckAdmin(admins);
		if(admins != null) {
			mv.setViewName("redirect:giao-dien-ad");
			session.setAttribute("loginInfo",admins);
			
		}
		else {
			mv.addObject("Comment", "Đăng nhâp tài khoản thất bại");
			mv.setViewName("admin/index");
		}
		return mv;
	}
	
	@RequestMapping(value = "/giao-dien-ad" ,method = RequestMethod.GET)
	public ModelAndView giaodien() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/giaodien");
		mv.addObject("admin",new Admin());
		return mv;
	}
	@RequestMapping(value = "/san-pham-admin" ,method = RequestMethod.GET)
	public ModelAndView SanPhamAD() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/san-pham-admin");
		mv.addObject("sanpham",homeDao.getDataSPView());
		mv.addObject("admin",new Admin());
		return mv;
	}
	
	@RequestMapping(value = "/tin-tuc-admin" ,method = RequestMethod.GET)
	public ModelAndView TinTucAD() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/TinTuc");
		mv.addObject("tintuc",homeDao.getDataTinTuc());
		mv.addObject("admin",new Admin());
		return mv;
	}
	
	@RequestMapping(value = "/khach-hang-admin" ,method = RequestMethod.GET)
	public ModelAndView KhachHangAD() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/KhachHang");
		mv.addObject("khachhang",homeDao.getDataUser());
		mv.addObject("admin",new Admin());
		return mv;
	}
	
	@RequestMapping(value = "/sua-san-pham/{id}",method = RequestMethod.GET)
	public ModelAndView SuaSanPham(@PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/Sua");
		mv.addObject("sanphams", homeDao.getCTSanPham(id));
		mv.addObject("sanpham",new SanPham());
		return mv;
	}
	
	
	@RequestMapping(value = "/sua-san-pham/{id}", method = RequestMethod.POST)
	public ModelAndView Sua(@PathVariable int id,HttpServletRequest request,@ModelAttribute("sanpham") SanPham sanphams) {
		ModelAndView mv = new ModelAndView();
		int count = adminDao.AddSanPham(sanphams);
		mv.addObject("sanphams", homeDao.getCTSanPham(id));
		if(count > 0) {
			mv.addObject("status", "Đăng nhâp tài khoản thành công");
		}
		else {
			mv.addObject("status", "Đăng nhâp tài khoản thất bại");
		}
		mv.setViewName("admin/Them");
		return mv;
	}
	
	
	@RequestMapping(value = "/them-san-pham" ,method = RequestMethod.GET)
	public ModelAndView ThemSanPham() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/Them");
		mv.addObject("sanpham",new SanPham());
		return mv;
	}
	@RequestMapping(value = "/them-san-pham", method = RequestMethod.POST)
	public ModelAndView DangKy(HttpServletRequest request,@ModelAttribute("sanpham") SanPham sanphams) {
		ModelAndView mv = new ModelAndView();
		int count = adminDao.AddSanPham(sanphams);
		if(count > 0) {
			mv.addObject("status", "Đăng nhâp tài khoản thành công");
		}
		else {
			mv.addObject("status", "Đăng nhâp tài khoản thất bại");
		}
		mv.setViewName("admin/Them");
		return mv;
	}
	
	@RequestMapping(value = "/xoa-san-pham/{id}")
	public String XoaSanPham(@PathVariable int id,RedirectAttributes redirectAtt) {
		adminDao.deleteID(id);
		redirectAtt.addFlashAttribute("messge", "Bạn chắc là muốn xóa sản phẩm này!!");
		return "redirect:/san-pham-admin";
	}
	
	@RequestMapping(value = "/trang-1" ,method = RequestMethod.GET)
	public ModelAndView PhanTrang2() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/san-pham-admin");
		mv.addObject("sanpham",homeDao.PhanTrang1());
		mv.addObject("admin",new Admin());
		return mv;
	}
	
	@RequestMapping(value = "/trang-2" ,method = RequestMethod.GET)
	public ModelAndView PhanTrangAD() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/san-pham-admin");
		mv.addObject("sanpham",homeDao.PhanTrang2());
		mv.addObject("admin",new Admin());
		return mv;
	}
	@RequestMapping(value = "/trang-3" ,method = RequestMethod.GET)
	public ModelAndView PhanTrang3() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/san-pham-admin");
		mv.addObject("sanpham",homeDao.PhanTrang3());
		mv.addObject("admin",new Admin());
		return mv;
	}

}
