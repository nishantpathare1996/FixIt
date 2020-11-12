import com.google.gson.Gson;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import javax.servlet.http.HttpSession;

@WebServlet("/GetProfessionals")

public class GetProfessionals extends HttpServlet {

	protected void doGet(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
		// PrintWriter pw = response.getWriter();

		String cityCode = request.getParameter("city");
        String subCategory = request.getParameter("subCategory");
        String category = request.getParameter("category");

        HttpSession session = request.getSession(true);
        session.setAttribute("city", cityCode);
        
        ArrayList<Professional> professionals = new ArrayList<Professional>();
        try{
            professionals = MySqlDataStoreUtilities.getProfessionals(cityCode,category);
        }
        catch(Exception e){
            // response.setParameter("error",e);
        }
        String professionalJson = new Gson().toJson(professionals);

        System.out.println(professionalJson);
        response.getWriter().write(professionalJson);

	}
}
