package com.bitMiners.eProgrammerz.services.exceptions;

public class ChapterAlreadyExistsException extends RuntimeException {
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public ChapterAlreadyExistsException() {
        super();
    }

    public ChapterAlreadyExistsException(String message) {
        super(message);
    }

    public ChapterAlreadyExistsException(String message, Throwable cause) {
        super(message, cause);
    }

}
