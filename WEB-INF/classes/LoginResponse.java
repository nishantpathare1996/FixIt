import java.io.IOException;
import java.io.PrintWriter;
import java.io.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/* 
	Users class contains class variables id,name,password,usertype.

	Users class has a constructor with Arguments name, String password, String usertype.
	  
	Users  class contains getters and setters for id,name,password,usertype.

*/

public class LoginResponse extends HttpServlet{
	private String status;
	private User user;
	
	public LoginResponse(String status,User user) {
        this.status = status;
		this.user = user;
	}

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}


	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

}
