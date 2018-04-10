package com.hexa.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hexa.dao.FlightDao;

import com.hexa.dao.NotFoundException;
import com.hexa.entity.CustomerDetails;
import com.hexa.service.FSer;

@Controller
public class FlightController {
	private Logger logger = LoggerFactory.getLogger("empapp");

	@Autowired
	private FlightDao dao;
	@Autowired
	private FSer ser;

	@RequestMapping(value = { "/", "loginfrm" })
	public String displayLogin() {
		logger.debug("in login page");
		return "Login";
	}

	@RequestMapping("/main")
	public String displayMain() {
		logger.debug("displaying main page");
		return "HomePage";
	}

	@RequestMapping("/viewflights")
	public String displayBookingSchedule(Model model) {
		model.addAttribute("tlist", dao.getSchedule());
		logger.debug("in booking schedule");
		return "FlightDetails";
	}

	@RequestMapping("/bookfrm")
	public String displayBookingForm() {
		return "BookingFrm";
	}

	@RequestMapping("/bookticket")
	public String displayBookingInfo(@RequestParam("src") String src, @RequestParam("dest") String dest,
			@RequestParam("date") String date, Model model) {
		model.addAttribute("blist", dao.getScheduleByInfo(src, dest, date));
		return "BookYourFlight";
	}

	@RequestMapping("/insertBooking")
	public String insertBookingDetails(@RequestParam("sid") Integer sid, @RequestParam("psgnr") Integer seats,
			Model model,HttpServletRequest request) {
		HttpSession sess =request.getSession();
		CustomerDetails cd=(CustomerDetails) sess.getAttribute("login");
		int custid=cd.getCustId();
		logger.debug("in insert method" +custid);
		model.addAttribute("booking", ser.updateSeat(sid, seats, custid));
		model.addAttribute("pnrno", dao.getPnrId(custid));
		// model.addAttribute("price", dao.getFare(sid));

		return "DisplayBooking";

	}

	@RequestMapping(value = "/checkLogin", method=RequestMethod.POST)
	public String processLogin(HttpServletRequest request, Model model, @RequestParam("uname") Integer uname,
			@RequestParam("pwd") String pass) throws NotFoundException {

		CustomerDetails cd = dao.getLogin(uname, pass);
		logger.debug(cd.toString());
		
		if (cd != null) {
			HttpSession httpsession = request.getSession();
			httpsession.setAttribute("login", cd);
			
			return "HomePage";
		} 
			
		return "Login";

	}

	@RequestMapping("/viewBookingDetails")
	public String getBookingDetails(@RequestParam("pno") int pnrno, Model model) {
		model.addAttribute("book", dao.getDetails(pnrno));
		return "ViewBookingDetails";
	}

	@RequestMapping("/pnrForm")
	public String displayForm() {
		logger.debug("displaying Booking page");
		return "PnrForm";
	}

	@RequestMapping("/logOut")
	public String logout() {
		logger.debug("logout method");
		return "Login";
	}

	@ExceptionHandler(NotFoundException.class)
	public ModelAndView handleRequest(NotFoundException ex) {
		logger.error(ex.getMessage());
		return new ModelAndView("MyErr", "err", ex.getMessage());
	}

}
