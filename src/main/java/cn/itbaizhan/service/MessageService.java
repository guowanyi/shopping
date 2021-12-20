package cn.itbaizhan.service;

import cn.itbaizhan.po.Message;

import java.util.List;

public interface MessageService {
//	和MessageDao的方法一样，可以封装，因为这边只是调用
	public void save(Message message);
	public void delete(Message message);
	public Message findMessageById(int id);
	public List<Message> findAllMessages();
	public Message queryMessage(String username);
	
}
