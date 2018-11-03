package com.bitMiners.eProgrammerz.services;

import com.bitMiners.eProgrammerz.domain.Message;

import java.util.List;

public interface MessageService {

    List<Message> getAllMessages();

    Message getOneMessage(Integer id);

    void saveMessage(Message message);

    void deleteMessage(Integer messageId);
}
