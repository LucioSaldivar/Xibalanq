package macuahuitl;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class StudentControllerServlet
 */
@WebServlet("/SpiderControllerServlet")
public class SpiderControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private SpiderDbUtil spiderDbUtil;
	
	@Resource(name="jdbc/xibalanq")
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException {
		super.init();
		
		// create our student db util ... and pass in the conn pool / datasource
		try {
			spiderDbUtil = new SpiderDbUtil(dataSource);
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// list the students ... in mvc fashion
		try {
			listSpiders(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
		
	}

	private void listSpiders(HttpServletRequest request, HttpServletResponse response) 
		throws Exception {

		// get students from db util
		List<Spider> spider = spiderDbUtil.getSpiders();
		
		// add students to the request
		request.setAttribute("SPIDER_LIST", spider);
				
		// send to JSP page (view)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/mirror.jsp");
		dispatcher.forward(request, response);
	}

}













