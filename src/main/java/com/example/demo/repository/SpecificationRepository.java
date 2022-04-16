package com.example.demo.repository;

import com.example.demo.enitity.Specification;
import com.example.demo.repository.base.BaseRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SpecificationRepository extends BaseRepository<Specification, Long> {
}
