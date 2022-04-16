package com.example.demo.repository;

import com.example.demo.enitity.Booking;
import com.example.demo.repository.base.BaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookingRepository extends BaseRepository<Booking, Long> {

    @Query(value = "select * from booking where split_part(bron_date,':',1)::int>=TO_CHAR(now(), 'DD')::int",nativeQuery = true)
    List<Booking> getByPlaygroundId(Long id);
}
