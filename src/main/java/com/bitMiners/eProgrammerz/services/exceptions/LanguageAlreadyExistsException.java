package com.bitMiners.eProgrammerz.services.exceptions;

public class LanguageAlreadyExistsException extends RuntimeException{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public LanguageAlreadyExistsException(){
		super();
	}
	public LanguageAlreadyExistsException(String message){
		super(message);
	}
	public LanguageAlreadyExistsException(String message,Throwable cause){
		super(message,cause);
	}

}
