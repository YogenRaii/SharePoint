package com.bitMiners.eProgrammerz.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bitMiners.eProgrammerz.domain.Message;

@Repository
public interface MessageRepository extends JpaRepository<Message, Integer> {

}
