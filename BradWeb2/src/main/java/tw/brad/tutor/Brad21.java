package tw.brad.tutor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad21")
public class Brad21 extends HttpServlet {
	
	private Connection conn =null;
	public Brad21() {
		try {
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			
			Class.forName("com.mysql.cj.jdbc.Driver");//buildpath 要去MYSQL官方看
			 conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/iii",prop);
			
			
		}catch (Exception e) {
			System.out.println(e);
		}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		
		String sql="INSERT INTO cust (cname,tel,birthday)"+
				"VALUES('digo','0932075148','1999-07-03')";
		Statement stmt = conn.createStatement();
		int count = stmt.executeUpdate(sql);
		
		
		System.out.println("OK2"+ count);
		
		
		
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		
		
	}

}
