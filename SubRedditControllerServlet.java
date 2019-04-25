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
@WebServlet("/SubRedditControllerServlet")
public class SubRedditControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private SubRedditDbUtil subRedditDbUtil;
	
	@Resource(name="jdbc/xibalanq")
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException {
		super.init();
		
		// create our student db util ... and pass in the conn pool / datasource
		try {
			subRedditDbUtil = new SubRedditDbUtil(dataSource);
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		// list the students ... in mvc fashion
		// read the "command" parameter
					String theCommand = request.getParameter("command");
					
					// if the command is missing, then default to listing students
					if (theCommand == null) {
						theCommand = "LIST";
					}
					
					// route to the appropriate method
					switch (theCommand) {
					
					case "LIST":
						listSubReddits(request, response);
						break;
						
					case "ADD":
						addSubReddit(request, response);
						break;
						
					case "LOAD":
						loadSubReddit(request, response);
						break;
						
						
					case "DELETE":
						deleteSubReddit(request, response);
						break;
						
					default:
						listSubReddits(request, response);
					}
						
				}
				catch (Exception exc) {
					throw new ServletException(exc);
				}
			}
				
private void deleteSubReddit(HttpServletRequest request, HttpServletResponse response)
		throws Exception {

		// read student id from form data
		String theSubRedditId = request.getParameter("subRedditId");
		
		// delete student from database
		subRedditDbUtil.deleteSubReddit(theSubRedditId);
		
		// send them back to "list students" page
		listSubReddits(request, response);
	}
	
	private void addSubReddit(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student info from form data

		String name = request.getParameter("name");
		
		// create a new student object
		SubReddit theSubReddit = new SubReddit(name);
		
		// add the student to the database
		subRedditDbUtil.addSubReddit(theSubReddit);
				
		// send back to main page (the student list)
		listSubReddits(request, response);
	}
	
	private void loadSubReddit(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {

			// read student id from form data
			String theSubRedditId = request.getParameter("subRedditId");
			
			// get student from database (db util)
			SubReddit theSubReddit = subRedditDbUtil.getSubReddits(theSubRedditId);
			
			// place student in the request attribute
			request.setAttribute("THE_SUBREDDIT", theSubReddit);
			
			// send to jsp page: update-student-form.jsp
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/subList.jsp");
			dispatcher.forward(request, response);		
		}

	private void listSubReddits(HttpServletRequest request, HttpServletResponse response) 
		throws Exception {

		// get students from db util
		List<SubReddit> subReddit = subRedditDbUtil.getSubReddits();
		
		// add students to the request
		request.setAttribute("SUBREDDIT_LIST", subReddit);
				
		// send to JSP page (view)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/subList.jsp");
		dispatcher.forward(request, response);
	}

}













