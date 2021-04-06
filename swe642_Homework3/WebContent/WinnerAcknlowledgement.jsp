<!--Author: Juan Pablo Mendieta
    Survey results that allows student to give feedback about their visit to the campus -->
<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.DataBean"%>
    <%@ page contentType = "text/html;charset=UTF-8" language="java" %>
        <html lang="en">
        <title>Winner Acknowledgement</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="styles.css">

        <body>

            <div class="container" style="width: 80%; margin: auto;">

                <!-- Navbar -->
                <div>
                    <ul class="topnav" style="background-color: #f9ab4f">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a class="active" href="survey.jsp">Survey</a></li>
                        <li><a href="vse.jsp">Volgenau S.E</a></li>
                    </ul>
                </div>


                <%  DataBean dataBean = new DataBean();
            	dataBean = (DataBean) session.getAttribute("dataBean");
            	ArrayList<String> studentIds = (ArrayList<String>) session.getAttribute("studentIds");%>

                    <div class="w3-row-padding w3-container" style="background-color: #FFCC33; padding-top: 10px; padding-bottom: 10px;">
                        <h1 class="w3-x-large">Thank you for completing the survey!</h1>
                        <h2 class="w3-x-large">Your survey was saved successfully!</h2>
                        <div class="w3-row">
                            <div class="w3-third">

                                <label for="mean" style="font-weight: bold">Mean:</label><br>
                                <label id="mean" for="mean"><%=dataBean.getMean()%></label><br><br>
                                <label for="mean" style="font-weight: bold">Standard Deviation:</label><br>
                                <label id="mean" for="mean"><%=dataBean.getStandardDeviation()%></label><br><br>
                                
                                <h4>Surveys Completed:</h4>
                                
                                <ul>
                        		<% for(int i = 0; i < studentIds.size(); i++) { %>
                        		<% String hrefLink = "./StudentSurveyResults?studentId=" + studentIds.get(i);%>
                                	<li><a href="<%= hrefLink %>"><%=studentIds.get(i)%></a></li>
                        		<% } %>
                        		</ul>
                                
                            </div>
                            <div class="w3-twothird">
                                <h3>Congratulations, you have won two movie tickets!</h3>
                                <img src="tickets.png" alt="" height="250px" style="margin-left: 60px;">
                            </div>
                        </div>
                    </div>

                    <!-- Footer -->
                    <div class="w3-row-padding w3-padding-16 w3-container" style="background-color: #006633;">
                        <div class="w3-content w3-right">
                            <a href="https://www2.gmu.edu/"><img src="gmu_white_logo.png" style="height: 125px;"></a>
                        </div>
                    </div>
            </div>
        </body>

        </html>