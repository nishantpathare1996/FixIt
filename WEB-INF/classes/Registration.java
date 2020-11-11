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
        User user = inputFromJson(request);
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
        MySqlDataStoreUtilities.insertUser(user);
        HttpSession session = request.getSession(true);				
        session.setAttribute("login_msg", "Congratulations "+user.getFirstName()+" you are registered! Login to continue.");
        response.getWriter().write("Success Data");
	}
    public static User inputFromJson(HttpServletRequest request) throws IOException {
        User user = null;
        Gson gson = new Gson();
        user = gson.fromJson(request.getReader(), User.class);
        return user;
    }
}
