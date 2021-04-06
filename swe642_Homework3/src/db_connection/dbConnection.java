package db_connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dbConnection {
	
	private Connection connection;
	private PreparedStatement statement;
	private ResultSet results;
	
	private String URL = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
	private String username = "jmendiet";
	private String password = "astuptoz";
	
	public dbConnection() {
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			this.connection = DriverManager.getConnection(URL, username, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Cannot connect to database");
        	e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Cannot connect to database");
			e.printStackTrace();
		}
		
		
	}
	
	public Connection getConnection() {
		return connection;
	}
	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	public PreparedStatement getStatement() {
		return statement;
	}
	public void setStatement(PreparedStatement statement) {
		this.statement = statement;
	}
	public ResultSet getResults() {
		return results;
	}
	public void setResults(ResultSet results) {
		this.results = results;
	}
	
	public void closeConnections() {
		try {
			if(this.results != null) {
				this.results.close();
			}
			if(this.statement != null) {
				this.statement.close();
			}
			if(this.connection != null) {
				this.connection.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
