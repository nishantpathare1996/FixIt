import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Startup")

/*  
startup servlet Intializes HashMap in SaxParserDataStore
*/

public class Startup extends HttpServlet
{
	public void init() throws ServletException
    {
        System.out.println("Application Started!");
        // Utilities utility = new Utilities(request,pw);
		// utility.logout();
        new Cities();
		// SaxParserDataStore.addHashmap();
        
        // MySqlDataStoreUtilities.Insertproducts();
    }
}
