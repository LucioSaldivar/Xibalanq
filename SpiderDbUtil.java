package macuahuitl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class SpiderDbUtil {

	private DataSource dataSource;

	public SpiderDbUtil(DataSource theDataSource) {
		dataSource = theDataSource;
	}
	
	public List<Spider> getSpiders() throws Exception {
		
		List<Spider> spiders = new ArrayList<>();
		
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			// get a connection
			myConn = dataSource.getConnection();
			
			// create sql statement
			String sql = "select * from articles order by id";
			
			myStmt = myConn.createStatement();
			
			// execute query
			myRs = myStmt.executeQuery(sql);
			
			// process result set
			while (myRs.next()) {
				
				// retrieve data from result set row
				int id = myRs.getInt("id");
				String article_id = myRs.getString("article_id");
				String subject = myRs.getString("subject");
				String subid = myRs.getString("subid");
				String title = myRs.getString("title");
				
				// create new customer object
				Spider tempSpider = new Spider(id, article_id, subject, subid, title);
				
				// add it to the list of students
				spiders.add(tempSpider);				
			}
			
			return spiders;		
		}
		finally {
			// close JDBC objects
			close(myConn, myStmt, myRs);
		}		
	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

		try {
			if (myRs != null) {
				myRs.close();
			}
			
			if (myStmt != null) {
				myStmt.close();
			}
			
			if (myConn != null) {
				myConn.close();   // doesn't really close it ... just puts back in connection pool
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
	}

}















