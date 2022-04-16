package com.example.demo.repository;

import com.example.demo.enitity.Sport;
import com.example.demo.repository.base.BaseRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SportRepository extends BaseRepository<Sport, Long> {
}
