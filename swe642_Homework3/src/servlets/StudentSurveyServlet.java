package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.DataBean;
import beans.DataProcessor;
import beans.StudentBean;
import dao.StudentDAO;

/**
 * Servlet implementation class StudentSurveyServlet
 */
@WebServlet(name = "StudentSurveyServlet", urlPatterns = "/StudentSurveyResults")
public class StudentSurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentSurveyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		StudentDAO stdDAO = new StudentDAO();
		
		StudentBean studentBean = stdDAO.getStudentSurveyDataById(request.getParameter("studentId"));
		
		request.getSession().setAttribute("studentBean", studentBean);
		
		if(studentBean == null) {
			getServletContext().getRequestDispatcher("/NoStudentSurveyError.jsp").forward(request, response);
		}else {
			getServletContext().getRequestDispatcher("/StudentSurveyResults.jsp").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Processing post form request
		
		StudentDAO stdDAO = new StudentDAO();
		
		String studentId = request.getParameter("studentID");				
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String url = request.getParameter("url");
		String data = request.getParameter("data");
		String gradMonth = request.getParameter("month");
		String gradYear = request.getParameter("gradYear");
		String[] preferences = request.getParameterValues("preferences");
		String interested = request.getParameter("interested");
		String recommend = request.getParameter("recommend");
		String comments = request.getParameter("comments");
		
		String concatenatedPreferences = preferences != null ? String.join(",", preferences) : "";
		
		stdDAO.insertStudentSurvey(studentId, name, address, city, state, Integer.parseInt(zip), telephone, email, date, url, data, gradMonth, gradYear, concatenatedPreferences, interested, recommend, comments);
		
		System.out.println("Survey stored successfully");
		
		DataProcessor dataProcesor = new DataProcessor();
		
		String[] stringNumbers = data.length() > 0 ? data.split(",") : new String[0];
		
		int[] numbers = new int[stringNumbers.length];
        
        if(numbers.length > 0) {
        	for(int i=0; i < numbers.length; i++){
                numbers[i] = Integer.parseInt(stringNumbers[i]); 
            }
        }		
		
		DataBean dataBean = dataProcesor.performOperations(numbers);
		
		request.getSession().setAttribute("dataBean", dataBean);
		request.getSession().setAttribute("studentIds", stdDAO.getAllStudentIds());
		
		if(dataBean.getMean() >= 90) {
			
			getServletContext().getRequestDispatcher("/WinnerAcknlowledgement.jsp").forward(request, response);
			
		}else {
			
			getServletContext().getRequestDispatcher("/SimpleAcknowledgement.jsp").forward(request, response);
			
		}
	}
}
