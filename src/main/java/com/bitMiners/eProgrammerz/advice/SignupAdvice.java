package com.bitMiners.eProgrammerz.advice;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bitMiners.eProgrammerz.advice.email.EmailService;
import com.bitMiners.eProgrammerz.domain.User;

@Aspect
@Component
public class SignupAdvice {
	@Autowired
	private EmailService emailService;

//	@AfterReturning("execution(* com.bitMiners.eProgrammerz.services.impl.UserServiceImpl.save(..))")
	public void aopEmail(JoinPoint jp) {
		System.out.println("hello sabin");
		User user = (User) jp.getArgs()[0];
		System.out.println(user.getEmail());
		emailService.sendEmail(user.getEmail(), "Registration info","Registered Sucessfully to eProgrammerz!! "+
				"Your username is: "+user.getEmail()+" and password is: "+
				user.getPassword()+". Share your idea in Tutorials Java...");
//		
	}
}
