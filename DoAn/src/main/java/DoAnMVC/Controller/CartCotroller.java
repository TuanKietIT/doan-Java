package DoAnMVC.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DoAnMVC.Dao.CheckDao;
import DoAnMVC.Dao.HomeDao;
import DoAnMVC.Entity.Bills;
import DoAnMVC.Entity.Cart;
import DoAnMVC.Entity.Users;

@Controller
public class CartCotroller {
	@Autowired
	HomeDao homeDao;
	
	@Autowired
	CheckDao check;
	
	@RequestMapping(value = "gio-hang")
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/GioHang");
		mv.addObject("sanpham", homeDao.getData());
		mv.addObject("theloai",homeDao.getDataLoai());
		return mv;
	}
	
	@RequestMapping(value = "AddCart/{id}")
	public String AddCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
		HashMap<Long, Cart> cart = (HashMap<Long, Cart>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, Cart>();
		}
		cart = homeDao.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TTCart",homeDao.TongSoLuong(cart));
		session.setAttribute("TotalPriceCart", homeDao.TongTien(cart));

		return "redirect:"+request.getHeader("Referer");
	}
	@RequestMapping(value = "EditCart/{id}/{soluong}")
	public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable long id,@PathVariable int soluong) {
		HashMap<Long, Cart> cart = (HashMap<Long, Cart>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, Cart>();
		}
		cart = homeDao.EditCart(id, soluong, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TTCart", homeDao.TongSoLuong(cart));
		session.setAttribute("TotalPriceCart", homeDao.TongTien(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	@RequestMapping(value = "DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
		HashMap<Long, Cart> cart = (HashMap<Long, Cart>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, Cart>();
		}
		cart = homeDao.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", homeDao.TongSoLuong(cart));
		session.setAttribute("TotalPriceCart", homeDao.TongTien(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "thanh-toan", method = RequestMethod.GET)
	public ModelAndView ThanhToan(HttpServletRequest request ,HttpSession session) {
		ModelAndView mv = new ModelAndView("user/DatHang");
		Bills bills = new Bills();
		Users loginInFo = (Users) session.getAttribute("loginInFo");
		if(loginInFo != null) {
			bills.setDiachi(loginInFo.getDiachi());
			bills.setEmail(loginInFo.getEmail());
			bills.setHoten(loginInFo.getHoten());
			
		}
		mv.addObject("bills",bills);
		return mv;
	}
	@RequestMapping(value = "thanh-toan", method = RequestMethod.POST)
	public String hoadon(HttpServletRequest request,HttpSession session,@ModelAttribute("bills") Bills bill) {
		if(check.AddBills(bill) > 0) {
			HashMap<Long, Cart> carts = (HashMap<Long, Cart>)session.getAttribute("Cart");
			check.AddBillsSP(carts);
		}
		session.removeAttribute("Cart");
		return "redirect:gio-hang";
	}
}
