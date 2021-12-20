package cn.itbaizhan.dao;

import cn.itbaizhan.po.Message;

import java.util.List;

public interface MessageDao {
	public void save(Message message);
	public void delete(Message message);
	public Message findMessageById(int id);
	public List<Message> findAllMessages();
	public Message queryMessage(String username);
	
}
