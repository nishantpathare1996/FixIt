import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;

@WebServlet("/Registration")

public class Registration extends HttpServlet {
	private String error_msg;

	/*   A json with user information is Obtained from HttpServletRequest variable and User Details are Added to the Users HashMap */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		PrintWriter pw = response.getWriter();
        String status = "fail";
        HttpSession session = request.getSession(true);	
        // User user = inputFromJson(request);
        String userId = request.getParameter("userid");
        String firstname = request.getParameter("fname");
        String lastname = request.getParameter("lname");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("contact");
        User user = new User(userId,firstname,lastname,password,email,phone);
		Utilities utility = new Utilities(request, pw);
        HashMap<String, User> hm=new HashMap<String, User>();
        try
        {
            hm=MySqlDataStoreUtilities.selectUser();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        hm.put(user.getUserId(), user);
        try{
            MySqlDataStoreUtilities.insertUser(user);
            
            status = "success";
            session.setAttribute("registration_msg", "Registered successfully!Login to continue.");
            // response.getWriter().write(session.getAttribute("login_msg").toString());
        }
        catch (Exception e){
            // response.getWriter().write("Registration failed! "+e);
            System.out.println(e);
            status = "fail";       
            session.setAttribute("registration_msg", "Registration failed!Please try again.");
            // request.getRequestDispatcher("/login.html").forward(request, response);
        }
        if(status.equals("success")){
			response.sendRedirect("Login");
		}
		else{
			response.sendRedirect("Registration");
		}
	}
    protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		// displayLogin(request, response, pw, false);
		Utilities utility = new Utilities(request, pw);
		utility.printHtml("header.html");
		utility.printHtml("registration.html");
		utility.printHtml("footer.html");
}
}
