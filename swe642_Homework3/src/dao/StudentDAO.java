package dao;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.StudentBean;
import db_connection.dbConnection;

public class StudentDAO {
	
	private dbConnection connection;
	private String selectStudentByIdQuery = "SELECT * FROM STUDENT_SURVEY WHERE \"STUDENT_ID\"" + " = ";
	private String selectAllStudentIdsQuery = "SELECT \"STUDENT_ID\" FROM STUDENT_SURVEY";
	private String insertQuery = "INSERT INTO STUDENT_SURVEY VALUES";
	
	
	public ArrayList<String> getAllStudentIds() {
		
		ArrayList<String> studentIds = new ArrayList<String>();
		
		try {
			
			connection = new dbConnection();
			
			connection.setStatement(connection.getConnection().prepareStatement(selectAllStudentIdsQuery));
			
			connection.setResults(connection.getStatement().executeQuery());
			
			while(connection.getResults().next()) {
				String studentId = connection.getResults().getString("STUDENT_ID");				
				studentIds.add(studentId);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			//Close all connections
			connection.closeConnections();
		}
		
		return studentIds;
	}
	
	public StudentBean getStudentSurveyDataById(String id) {
		
		StudentBean student = null;
		
		try {
			
			connection = new dbConnection();
			
			connection.setStatement(connection.getConnection().prepareStatement(selectStudentByIdQuery + "'" + id + "'"));
			
			connection.setResults(connection.getStatement().executeQuery());
			
			while(connection.getResults().next()) {
				String studentId = connection.getResults().getString("STUDENT_ID");				
				String name = connection.getResults().getString("NAME");
				String address = connection.getResults().getString("ADDRESS");
				String city = connection.getResults().getString("CITY");
				String state = connection.getResults().getString("STATE");
				int zip = connection.getResults().getInt("ZIP");
				String telephone = connection.getResults().getString("TELEPHONE");
				String email = connection.getResults().getString("EMAIL");
				String date = connection.getResults().getString("SURVEY_DATE");
				String url = connection.getResults().getString("URL");
				String data = connection.getResults().getString("DATA");
				String gradMonth = connection.getResults().getString("GRADUATION_MONTH");
				String gradYear = connection.getResults().getString("GRADUATION_YEAR");
				String preferences = connection.getResults().getString("PREFERENCES");
				String interested = connection.getResults().getString("INTERESTED");
				String recommend = connection.getResults().getString("RECOMMEND");
				String comments = connection.getResults().getString("COMMENTS");
				
				student = new StudentBean(studentId, name, address, city, state, zip, telephone, email, date, url, data, gradMonth, gradYear, preferences, interested, recommend, comments);

			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			//Close all connections
			connection.closeConnections();
		}
		
		return student;
	}
	
	public void insertStudentSurvey(String studentId, String name, String address, String city, String state, int zip, String telephone, String email, String date, String url, String data, String gradMonth, String gradYear, String preferences, String interested, String recommend, String comments){
		
		connection = new dbConnection();
		
		try {
			
			String finalQuery = insertQuery + " ('"+studentId+"','"+name+"','"+address+"','"+city+"','"+state+"',"+zip+",'"+telephone+"','"+email+"',TO_DATE('"+date+"','YY/MM/DD')"+",'"+url+"','"+data+"','"+gradMonth+"','"+gradYear+"','"+preferences+"','"+interested+"','"+recommend+"','"+comments+"')";
			
			connection.setStatement(connection.getConnection().prepareStatement(finalQuery));
			
			connection.getStatement().executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			//Close all connections
			connection.closeConnections();
		}
	}
}
