import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.time.LocalTime;
import java.time.LocalDate;

@WebServlet("/Appointment")

public class ScheduleAppointment extends HttpServlet {
	private String error_msg;

	/*   A json with user information is Obtained from HttpServletRequest variable and User Details are Added to the Users HashMap */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
        String status = "fail";
        HttpSession session = request.getSession(true);
        String userId = session.getAttribute("userId").toString();
        String techId = request.getParameter("techId");
        // String city = session.getAttribute("city");
        String street = request.getParameter("street");
        String zip = request.getParameter("zip");
        LocalDate date = LocalDate.parse(request.getParameter("date"));
        LocalTime time = LocalTime.parse(request.getParameter("time"));
        Appointment appointment = new Appointment(userId,techId,street,zip,date,time);
        try{
            MySqlDataStoreUtilities.scheduleAppointment(appointment);
            status = "success";
        }
        catch (Exception e){
            System.out.println(e);
            status = "fail";       
            session.setAttribute("appointment_failed", "Could not schedule appointment!Please try again.");
        }
        // if(status.equals("success")){
		// 	response.sendRedirect("Appointments.jsp");
		// }
		// else{
			response.sendRedirect("Payment.jsp");
		// }
	}
}
