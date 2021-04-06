<!--Author: Juan Pablo Mendieta
    Assignment 2: creation of a website that provides information about George Mason's CS Department
    and provides a survey that allows student to give feedback about their visit to the campus. JQuery additions to improve the user experience.
    Also, a simplified version of Volgenau School Engineering page is displayed using JQuery UI tabs as well.  -->

<!DOCTYPE html>
<html lang="en">
<title>Homework 2</title>
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
                <li><a class="active" href="index.jsp">Home</a></li>
                <li><a href="survey.jsp">Survey</a></li>
                <li><a href="vse.jsp">Volgenau S.E</a></li>
            </ul>
        </div>

        <!-- CS Department Information -->
        <header class="w3-container w3-center" style="padding:128px 16px; background-color: #FFCC33;">
            <div class="w3-content">
                <div class="w3-twothird">
                    <div id="depInfo">
                        <h1>Department of Computer Science</h1>
                        <p class="w3-large" style="text-align: justify;"> The department offers two Bachelor of Science programs with a total enrollment of over 1800 students: the B.S. in Computer Science and the inter-disciplinary B.S. in Applied Computer Science; four M.S. programs in Computer Science,
                            Information Systems, Information Security and Assurance, and Software Engineering with a total enrollment of 350 students; and a Ph.D. program in Computer Science with over 100 students. The department's faculty also teach
                            and participate in the inter-disciplinary M.S. in Data Analytics Engineering and the Ph.D. in Information Technology offered by the Volgenau School of Engineering.
                        </p>
                    </div>
                </div>
                <div class="w3-third">
                    <img src="Volgenau.jpg" alt="Volgenau School of Engineering" height="280px" style="padding-top: 50px; padding-left: 10px;">
                </div>
            </div>
        </header>

        <!-- Degress requirenments -->
        <div class="w3-row-padding w3-padding-64 w3-container" style="background-color: white;">
            <div class="w3-content">
                <div>
                    <h2>MS Degrees</h2>

                    <p class="w3-large" style="text-align: justify;">
                        The department offers a wide range of masters programs: Computer Science, Information Systems, Information Security and Assurance, and Software Engineering. The Department also offers additional graduate certificates in a variety of topics; course work
                        toward the certificates can be used for credit toward various Masters programs.
                    </p>

                    <table style="width:100%">
                        <tr>
                            <th>Degree</th>
                            <th colspan="2">Requirements</th>
                        </tr>

                        <!-- MS Software Engineering Table Section -->
                        <tr>
                            <th rowspan="5" style="text-align: left;">
                                <ul>
                                    <li>
                                        MS in Software Engineering
                                    </li>
                                </ul>
                            </th>
                            <th>Course Code</th>
                            <th>Course Name</th>
                        </tr>
                        <tr>
                            <td>SWE 619</td>
                            <td>Object-Oriented Software Specification and Construction</td>
                        </tr>
                        <tr>
                            <td>SWE 621</td>
                            <td>Software Design and Architecture</td>
                        </tr>
                        <tr>
                            <td>SWE 632</td>
                            <td>User Interface Design and Development</td>
                        </tr>
                        <tr>
                            <td>SWE 637</td>
                            <td>Software Testing</td>
                        </tr>

                        <!-- MS Information Systems Table Section -->
                        <tr>
                            <th rowspan="6" style="text-align: left;">
                                <ul>
                                    <li>
                                        MS in Information Systems
                                    </li>
                                </ul>
                            </th>
                            <th>Course Code</th>
                            <th>Course Name</th>
                        </tr>
                        <tr>
                            <td>CS 530</td>
                            <td>Mathematical Foundations of Computer Science</td>
                        </tr>
                        <tr>
                            <td>CS 550</td>
                            <td>Database Systems</td>
                        </tr>
                        <tr>
                            <td>INFS 612</td>
                            <td>Principles and Practices of Communication Networks</td>
                        </tr>
                        <tr>
                            <td>INFS 622</td>
                            <td>Information Systems Analysis and Design</td>
                        </tr>
                        <tr>
                            <td>INFS 740</td>
                            <td>Database Programming for the World Wide Web</td>
                        </tr>

                        <!-- MS Computer Science Table Section -->
                        <tr>
                            <th rowspan="4" style="text-align: left;">
                                <ul>
                                    <li>
                                        MS in Computer Science
                                    </li>
                                </ul>
                            </th>
                            <th>Course Code</th>
                            <th>Course Name</th>
                        </tr>
                        <tr>
                            <td>CS 583</td>
                            <td>Analysis of Algorithms</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left; padding-left: 10px;">Two additional core courses from two other areas of this
                                <a href="https://cs.gmu.edu/current-students/ms-students/ms-in-computer-science/core-courses/" target="_blank" style="color: blue;">list</a>
                            </td>

                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left; padding-left: 10px;">
                                At least four courses (12 credits) must be chosen from the advanced courses of the following pre-approved courses
                                <a href="https://cs.gmu.edu/current-students/ms-students/ms-in-computer-science/pre-approved-courses/" target="_blank" style="color: blue;">list</a>
                            </td>
                        </tr>

                        <!-- MS Information Security and Assurance Table Section -->
                        <tr>
                            <th rowspan="6" style="text-align: left;">
                                <ul>
                                    <li>
                                        MS in Information Security and Assurance
                                    </li>
                                </ul>
                            </th>
                            <th>Course Code</th>
                            <th>Course Name</th>
                        </tr>
                        <tr>
                            <td>ISA 562</td>
                            <td>Information Security Theory and Practice</td>
                        </tr>
                        <tr>
                            <td>ISA 656</td>
                            <td>Network Security</td>
                        </tr>
                        <tr>
                            <th colspan="2" style="text-align: left; padding-left: 10px;">One of the following:</th>
                        </tr>
                        <tr>
                            <td>INFS 612</td>
                            <td>Principles and Practices of Communication Networks</td>
                        </tr>
                        <tr>
                            <td>CS 555</td>
                            <td>Computer Communications and Networking</td>
                        </tr>
                    </table>
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