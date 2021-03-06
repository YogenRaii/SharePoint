package com.bitMiners.eProgrammerz.services.impl;

import com.bitMiners.eProgrammerz.domain.Message;
import com.bitMiners.eProgrammerz.repository.MessageRepository;
import com.bitMiners.eProgrammerz.services.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageRepository messageRepository;

    @Override
    public void saveMessage(Message message) {
        message.setDate(new Date());
        messageRepository.save(message);
    }

    @Override
    public void deleteMessage(Integer messageId) {
        messageRepository.delete(messageId);
    }

    @Override
    public List<Message> getAllMessages() {
        return messageRepository.findAll();
    }

    @Override
    public Message getOneMessage(Integer id) {
        return messageRepository.findOne(id);
    }

}
