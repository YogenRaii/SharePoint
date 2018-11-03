package com.bitMiners.eProgrammerz.repository;

import com.bitMiners.eProgrammerz.domain.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MessageRepository extends JpaRepository<Message, Integer> {

}
