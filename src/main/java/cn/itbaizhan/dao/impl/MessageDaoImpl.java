package cn.itbaizhan.dao.impl;

import cn.itbaizhan.dao.MessageDao;
import cn.itbaizhan.po.Message;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component("messageDaoImpl")
public class MessageDaoImpl implements MessageDao {
//使用spring对Hibernate的模版 HibernateTemplate
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;
	
	public void delete(Message message) {
	hibernateTemplate.delete(message);
	}
	@SuppressWarnings("unchecked")
	public List<Message> findAllMessages() {
		String hql = "from Message";
		return (List<Message>)hibernateTemplate.find(hql);
	}

	public Message findMessageById(int id) {
		Message message = (Message)hibernateTemplate.get(Message.class, id);
		return message;
	}

	public void save(Message message) {
		System.out.println(message);
	 hibernateTemplate.save(message);
	}

	public HibernateTemplate getHibernateTmeplate() {
		return hibernateTemplate;
	}
	public void setHibernateTmeplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public Message queryMessage(String username) {
		
		return (Message)hibernateTemplate.getSessionFactory().openSession().createQuery(
		"from Message m where m.username=? ").setParameter(
				0, username).uniqueResult();

	}
	
}
