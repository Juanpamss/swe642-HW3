<!--Author: Juan Pablo Mendieta
    Survey that allows student to give feedback about their visit to the campus -->
<!DOCTYPE html>
<%@ page contentType = "text/html;charset=UTF-8" language="java" %>
    <html lang="en">
    <title>Survey</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="js/jquery-ui.min.css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/additional-methods.min.js"></script>

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

            <!-- Survey form -->
            <div class="w3-row-padding w3-container" style="background-color: #FFCC33; padding-top: 10px;">
                <div style="text-align: center;">
                    <h1 id="greeting"></h1>
                    <a id="changeUser" href='#' onclick="wrongCurrentUser()"></a>
                </div>
                <br>
                <h1 class="w3-x-large">Please provide feedback about your campus visit</h1>
                <form method="post" action="./StudentSurveyResults" autocomplete="on" id="surveyForm">
                    <div class="w3-row">
                        <h6 style="font-weight: bold;">All fields marked with * are required</h6>
                        <div class="w3-col m6">
                            <label for="name">Name *</label><br>
                            <input type="text" id="name" name="name" autofocus><br><br>
                            <label for="StudentID">Student ID *</label><br>
                            <input type="text" id="studentID" name="studentID" required><br><br>
                            <label for="address">Address *</label><br>
                            <input type="text" id="address" name="address"><br><br>
                            <label for="city">City *</label><br>
                            <input type="text" id="city" name="city" required><br><br><br>
                            <label for="gradHighSchool" style="font-weight: bold;">High-school graduation month</label>
                            <input list="months" name="month" id="month">
                            <datalist id="months">
                            <option value="January">
                            <option value="February">
                            <option value="March">
                            <option value="April">
                            <option value="May">
                            <option value="June">
                            <option value="July">
                            <option value="August">
                            <option value="September">
                            <option value="October">
                            <option value="November">
                            <option value="December">
                        </datalist> Year <input type="number" name="gradYear" id="gradYear" style="width: 20%;">
                            <br><br>
                            <label for="preferences" style="font-weight: bold;">What you liked the most about the
                            campus</label><br>
                            <div class="preferencesList">
                                <input type="checkbox" id="students" name="preferences" value="Students">
                                <label for="students"> Students</label><br>
                                <input type="checkbox" id="location" name="preferences" value="Location">
                                <label for="location"> Location</label><br>
                                <input type="checkbox" id="campus" name="preferences" value="Campus">
                                <label for="campus"> Campus</label><br>
                                <input type="checkbox" id="atmosphere" name="preferences" value="Atmosphere">
                                <label for="atmosphere"> Atmosphere</label><br>
                                <input type="checkbox" id="dorm rooms" name="preferences" value="Dorm rooms">
                                <label for="dorm rooms"> Dorm rooms</label><br>
                                <input type="checkbox" id="sports" name="preferences" value="Sports">
                                <label for="sports"> Sports</label><br>
                            </div>
                            <br>
                            <label for="interested" style="font-weight: bold;">How you became interested about
                            GMU</label><br>
                            <div class="interestedList">
                                <input type="radio" id="friends" name="interested" value="Friends">
                                <label for="friends">Friends</label><br>
                                <input type="radio" id="television" name="interested" value="Television">
                                <label for="television">Television</label><br>
                                <input type="radio" id="Internet" name="interested" value="Internet">
                                <label for="Internet">Internet</label><br>
                                <input type="radio" id="other" name="interested" value="Other">
                                <label for="other">Other</label><br>
                            </div>
                            <br>
                            <label for="recomm" style="font-weight: bold;">What is the likelihood you recommend George Mason
                            University:</label>
                            <select name="recommend" id="recommend">
                            <option value="Very Likely">Very Likely</option>
                            <option value="Likely">Likely</option>
                            <option value="Unlikely">Unlikely</option>
                        </select><br><br>
                        </div>
                        <div class="w3-col m6">
                            <label for="state">State *</label><br>
                            <input type="text" id="state" name="state" required><br><br>
                            <label for="zip">Zip *</label><br>
                            <input type="number" id="zip" name="zip"><br><br>
                            <label for="telephone">Telephone *</label><br>
                            <input type="tel" id="telephone" name="telephone" placeholder="202-455-6785" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"><br><br>
                            <label for="email">Email *</label><br>
                            <input type="text" id="email" name="email" placeholder="email@gmail.com"><br><br>
                            <label for="date">Date *</label><br>
                            <input type="date" id="date" name="date"><br><br>
                            <label for="url">URL</label><br>
                            <input type="url" id="url" name="url" placeholder="http://www.deitel.com"><br><br>
                            <label for="data">Data</label><br>
                            <input type="text" id="data" name="data" pattern="(([1-9][0-9]?|100),{0,1}){10}" placeholder="10,2,5,13,5,6,8,1,5,99"><br><br>
                        </div>
                    </div>
                    <div class="w3-row">
                        <div class="w3-col m6">
                            <label for="comments">Comments</label><br>
                            <textarea id="comments" name="comments" rows="4" form="surveyForm"></textarea>
                        </div>
                    </div>
                    <br>
                    <div class="w3-row">
                        <div class="w3-col m3">
                            <input type="reset" value="Reset" onclick="resetAutocompleteValues()" />
                        </div>
                        <div class="w3-col m3">
                            <input id="btnSubmit" type="submit" value="Submit"><br><br>
                        </div>
                    </div>

                    <div style="display: none;">
                        <p id="validationModal"></p>
                    </div>
                </form>
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