package DoAnMVC.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DoAnMVC.Dao.UserDao;
import DoAnMVC.Entity.Users;

@Controller
public class UserCotroller {
	
	@Autowired
	UserDao userdao;
	
	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView Register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/dangnhap");
		mv.addObject("user",new Users());
		return mv;
	}
	
	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public ModelAndView DangKy(@ModelAttribute("user") Users user) {
		ModelAndView mv = new ModelAndView();
		int count = userdao.AddAc(user);
		if(count > 0) {
			mv.addObject("status", "Đăng nhâp tài khoản thành công");
		}
		else {
			mv.addObject("status", "Đăng nhâp tài khoản thất bại");
		}
		mv.setViewName("user/dangnhap");
		return mv;
	}
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView DangNhap(HttpSession session,@ModelAttribute("user") Users user) {
		ModelAndView mv = new ModelAndView();
		user = userdao.CheckAC(user);
		if(user != null) {
			mv.setViewName("redirect:trang-chu");
			session.setAttribute("loginInFo",user);
			
		}
		else {
			mv.addObject("Comment", "Đăng nhâp tài khoản thất bại");
			mv.setViewName("user/dangnhap");
		}
		return mv;
	}
	
	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String DangXuat(HttpSession session,HttpServletRequest request) {
		session.removeAttribute("loginInFo");
		return "redirect:"+request.getHeader("Referer");
	}
}

