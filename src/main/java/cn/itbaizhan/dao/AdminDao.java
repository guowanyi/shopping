package cn.itbaizhan.dao;

import cn.itbaizhan.po.Admin;

import java.util.List;
//有tomcat吗有，这是web项目还是spring项目web不用导入jar包吗
public interface AdminDao {
	public void save(Admin admin);
	public void delete(Admin admin);
	public Admin findAdminById(int id);
	public List<Admin> findAllAdmins();
	public void update(Admin admin);
	//public void initPassword(User user);
	public Admin getUserByLoginNameAndPassword(String name, String password);

	
}
