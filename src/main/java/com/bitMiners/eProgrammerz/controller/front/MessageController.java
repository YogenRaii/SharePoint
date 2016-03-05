package com.bitMiners.eProgrammerz.controller.front;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bitMiners.eProgrammerz.domain.Message;
import com.bitMiners.eProgrammerz.services.MessageService;
@RestController
@RequestMapping("/message")
public class MessageController {
	
	@Autowired
	private MessageService messageService;

	@RequestMapping(method=RequestMethod.POST)
	public ResponseEntity<Message> getMessge(@Valid @RequestBody Message message){
		System.out.println(message);
		messageService.saveMessage(message);
		return new ResponseEntity<Message>(HttpStatus.OK);
		
	}
}
