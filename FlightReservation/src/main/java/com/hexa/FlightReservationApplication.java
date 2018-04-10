package com.hexa;

import java.util.Random;

import javax.persistence.EntityManagerFactory;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

import com.hexa.dao.FlightDao;
import com.hexa.entity.BookingDetails;
import com.hexa.service.FSer;

@SpringBootApplication
@EntityScan("com.hexa.entity")
public class FlightReservationApplication extends SpringBootServletInitializer implements CommandLineRunner{
	
	@Autowired
	private EntityManagerFactory emf;

	@Autowired
	FSer fs;
	
	@Bean
	public SessionFactory getSessionFactory() {
		return emf.unwrap(SessionFactory.class);
	}
	public static void main(String[] args) {
		SpringApplication.run(FlightReservationApplication.class, args);
	}
	@Override
	public void run(String... arg0) throws Exception {	
		
	}
	

}
