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
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
        String status = "fail";
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
            HttpSession session = request.getSession(true);	
            status = "success";
            // session.setAttribute("login_msg", "Congratulations "+user.getFirstName()+" you are registered! Login to continue.");
            // response.getWriter().write(session.getAttribute("login_msg").toString());
        }
        catch (Exception e){
            // response.getWriter().write("Registration failed! "+e);
            status = "fail";
            
            // request.setAttribute("errorMessage", "Registration failed!");
            // request.getRequestDispatcher("/login.html").forward(request, response);
        }        
        String responseJson = new Gson().toJson(status);
        response.getWriter().write(responseJson);
	}
    public static User inputFromJson(HttpServletRequest request) throws IOException {
        User user = null;
        Gson gson = new Gson();
        user = gson.fromJson(request.getReader(), User.class);
        return user;
    }
}
