import java.io.*;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")

public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();

		/* User Information(username,password) is obtained from HttpServletRequest,
		Based on the Type of user(customer,retailer,manager) respective hashmap is called and the username and 
		password are validated and added to session variable and display Login Function is called */

		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		// String usertype = request.getParameter("usertype");
		HashMap<String, User> hm=new HashMap<String, User>();
		try
		{		
			hm=MySqlDataStoreUtilities.selectUser();
		}
		catch(Exception e)
		{			
		}
		User user = null;
		if(hm.containsKey(userId))
		{
            user = hm.get(userId);
		    String user_password = user.getPassword();
		    if (password.equals(user_password))
			{
                HttpSession session = request.getSession(true);
                session.setAttribute("userId", user.getUserId());
                session.setAttribute("usertype", user.getUsertype());
                response.sendRedirect("Home");
                return;
			}
		}
		// displayLogin(request, response, pw, true);
	}

}
