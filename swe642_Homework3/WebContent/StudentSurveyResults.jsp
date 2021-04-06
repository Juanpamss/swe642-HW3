<!--Author: Juan Pablo Mendieta
    Survey results that allows student to give feedback about their visit to the campus -->
<!DOCTYPE html>
<%@page import="java.util.Date"%>
    <%@page import="java.text.SimpleDateFormat"%>
        <%@page import="beans.StudentBean"%>
            <%@ page contentType = "text/html;charset=UTF-8" language="java" %>
                <html lang="en">
                <title>Survey Results</title>
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

                        <%  StudentBean studentBean = new StudentBean();
            				studentBean = (StudentBean) session.getAttribute("studentBean");
            				String[] preferences = studentBean.getPreferences() != null ? studentBean.getPreferences().split(",") : new String[0];
            				String[] input = studentBean.getDate().split(" ");
            				String date = input[0];%>

                            <!-- Survey form -->
                            <div class="w3-row-padding w3-container" style="background-color: #FFCC33; padding-top: 10px;">
                                <br>
                                <h1 class="w3-x-large">Student survey for:
                                    <%=studentBean.getStudentId()%>
                                </h1>
                                <div class="w3-row">
                                    <div class="w3-col m6">
                                        <label for="name" style="font-weight: bold;">Name</label><br>
                                        <label id="name" for="name"><%=studentBean.getName()%></label><br><br>
                                        <label for="studentID" style="font-weight: bold;">Student ID</label><br>
                                        <label id="studentID" for="studentID"><%=studentBean.getStudentId()%></label><br><br>
                                        <label for="address" style="font-weight: bold;">Address</label><br>
                                        <label id="address" for="address"><%=studentBean.getAddress()%></label><br><br>
                                        <label for="city" style="font-weight: bold;">City</label><br>
                                        <label id="city" for="city"><%=studentBean.getCity()%></label><br><br>
                                        <label for="gradHighSchool" style="font-weight: bold;">High-school graduation month</label>
                                        <label id="gradMonth" for="gradMonth">
                                            <% if (studentBean.getGradMonth() != "" && studentBean.getGradMonth() != null) { %>
         											<%=studentBean.getGradMonth()%>
      										<% } else { %>
         											N/A
      										<% } %>
      									</label>
                                        <label for="gradYear" style="font-weight: bold;">Year</label>
                                        <label for="gradYear">
                                            <% if (studentBean.getGradYear() != "" && studentBean.getGradYear() != null) { %>
         											<%=studentBean.getGradYear()%>
      										<% } else { %>
         											N/A
      										<% } %>
      									</label><br><br><br>
                                        <label for="preferences" style="font-weight: bold;">What you liked the most about the campus</label><br>
                                        <div class="preferencesList">
                                            <ul>
                                                <% for(int i = 0; i < preferences.length; i++) { %>
                                                    <li>
                                                        <%=preferences[i]%>
                                                    </li>
                                                    <% } %>
                                            </ul>
                                        </div>
                                        <br>
                                        <label for="interested" style="font-weight: bold;">How you became interested about GMU</label><br>
                                        <label id="interested" for="interested">
                                            <% if (studentBean.getInterested() != "" && studentBean.getInterested() != null) { %>
         											<%=studentBean.getInterested()%>
      										<% } else { %>
         											N/A
      										<% } %>
      									</label><br><br>
                                        <br>
                                        <label for="recommend" style="font-weight: bold;">What is the likelihood you recommend George Mason University:</label>
                                        <label id="recommend" for="recommend">
                                            <% if (studentBean.getRecommend() != "" && studentBean.getRecommend() != null) { %>
         											<%=studentBean.getRecommend()%>
      										<% } else { %>
         											N/A
      										<% } %>
      									</label><br><br>
                                    </div>
                                    <div class="w3-col m6">
                                        <label for="state" style="font-weight: bold;">State</label><br>
                                        <label id="state" for="state"><%=studentBean.getState()%></label><br><br>
                                        <label for="zip" style="font-weight: bold;">Zip</label><br>
                                        <label id="zip" for="zip"><%=studentBean.getZip()%></label><br><br>
                                        <label for="telephone" style="font-weight: bold;">Telephone</label><br>
                                        <label id="telephone" for="telephone"><%=studentBean.getTelephone()%></label><br><br>
                                        <label for="email" style="font-weight: bold;">Email</label><br>
                                        <label id="email" for="email"><%=studentBean.getEmail()%></label><br><br>
                                        <label for="date" style="font-weight: bold;">Date</label><br>
                                        <label id="date" for="date"><%=date%></label><br><br>
                                        <label for="url" style="font-weight: bold;">URL</label><br>
                                        <label id="url" for="url">
                                        	<% if (studentBean.getUrl() != "" && studentBean.getUrl() != null) { %>
         											<%=studentBean.getUrl()%>
      										<% } else { %>
         											N/A
      										<% } %>
      									</label><br><br>
                                        <label for="data" style="font-weight: bold;">Data</label><br>
                                        <label id="data" for="data">
                                        	<% if (studentBean.getData() != "" && studentBean.getData() != null) { %>
         											<%=studentBean.getData()%>
      										<% } else { %>
         											N/A
      										<% } %>                                  
                                        </label><br><br>
                                    </div>
                                </div>
                                <div class="w3-row">
                                    <div class="w3-col m6">
                                        <label for="comments" style="font-weight: bold;">Comments</label><br>
                                        <label id="comments" for="comments">
                                            <% if (studentBean.getComments() != "" && studentBean.getComments() != null) { %>
         											<%=studentBean.getComments()%>
      										<% } else { %>
         											N/A
      										<% } %>
      									</label><br><br>
                                    </div>
                                </div>
                                <br>
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