package com.example.demo.repository;

import com.example.demo.enitity.Playground;
import com.example.demo.repository.base.BaseRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlaygroundRepository  extends BaseRepository<Playground,Long> {
    
}
