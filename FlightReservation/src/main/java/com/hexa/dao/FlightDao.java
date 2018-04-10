package com.hexa.dao;

import java.util.Date;
import java.util.List;

import com.hexa.entity.BookingDetails;
import com.hexa.entity.CustomerDetails;
import com.hexa.entity.FlightDetails;
import com.hexa.entity.FlightSchedule;


public interface FlightDao {
 public int addBookingDetails(BookingDetails bdet);
 public List<FlightSchedule> getSchedule();
 public BookingDetails getDetails(int pnrno);
 public int updateSeats(FlightSchedule fsch);
 public FlightSchedule getSeats(int schId);
 public List<FlightSchedule> getScheduleByInfo(String src, String dest, String date);
 public int updatePnrId();
 public BookingDetails getPnrId(int custId);
 //public FlightDetails getFare(int schId);
 public CustomerDetails getLogin(int username, String pwd) throws NotFoundException;

}
