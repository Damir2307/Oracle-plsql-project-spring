package com.example.demo.service.impl;

import com.example.demo.enitity.Booking;
import com.example.demo.repository.BookingRepository;
import com.example.demo.service.api.BookingService;
import com.example.demo.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class BookingServiceImpl extends BaseServiceImpl<Booking, Long, BookingRepository> implements BookingService {

}
