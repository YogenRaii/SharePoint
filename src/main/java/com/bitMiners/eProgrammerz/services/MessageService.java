package com.bitMiners.eProgrammerz.services;

import java.util.List;

import com.bitMiners.eProgrammerz.domain.Message;

public interface MessageService {

	List<Message> getAllMessages();
	Message getOneMessage(Integer id);
	void saveMessage(Message message);
	void deleteMessage(Integer messageId);
}
