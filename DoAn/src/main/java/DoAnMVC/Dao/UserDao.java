package DoAnMVC.Dao;


import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import DoAnMVC.Entity.MapperUser;

import DoAnMVC.Entity.Users;



@Repository
public class UserDao {
	
	@Autowired
	public JdbcTemplate  _jdbcTemplate;
	
	public int AddAccount(Users user) {
		String sql =("INSERT INTO users (hoten,taikhoan,matkhau,email,sodienthoai,diachi)VALUES('"+user.getHoten()+"','"+user.getTaikhoan()+"','"+user.getMatkhau()+"','"+user.getEmail()+"','"+user.getSodienthoai()+"','"+user.getDiachi()+"');");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int AddAc(Users user) {
		user.setMatkhau(BCrypt.hashpw(user.getMatkhau(),BCrypt.gensalt(12)));
		return AddAccount(user);
	}
	

	public Users GetUser(Users user){
        String sql ="SELECT * FROM users WHERE taikhoan = '"+user.getTaikhoan()+"'"; 
        Users result = _jdbcTemplate.queryForObject(sql, new MapperUser());
		return result;

	}
	
	public Users CheckAC(Users user) {
		String pass = user.getMatkhau();
		user = GetUser(user);
		if(user != null) {
			if(BCrypt.checkpw(pass,user.getMatkhau())) {
				return user;
			}
			else {
				return null;
			}
		}
		return null;
	}
	
}
