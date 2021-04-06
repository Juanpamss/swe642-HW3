<!--Author: Juan Pablo Mendieta
    Page containing a simplified version of Volgenau School Engineering website using JQuery UI.  -->

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
<link rel="stylesheet" href="js/jquery-ui.min.css">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>

<script>
    $(function() {
        $("#tabs").tabs();
    });
</script>

<body>

    <div class="container" style="width: 80%; margin: auto;">
        <!-- Navbar -->
        <div>
            <ul class="topnav" style="background-color: #f9ab4f">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="survey.jsp">Survey</a></li>
                <li><a class="active" href="vse.jsp">Volgenau S.E</a></li>
            </ul>
        </div>

        <!-- JQuery Tab -->
        <header class="w3-container w3-center" style="padding:30px 16px; background-color: #FFCC33;">
            <div class="container-custom">
                <div class="image">
                    <img src="https://volgenau.gmu.edu/themes/custom/sf_mason_basic/logo.png" height="100px" width="100px">
                </div>
                <div class="text">
                    <h2 style="text-align: start;">Volgenau School of Engineering</h2>
                </div>
            </div>
            <div id="tabs" style="margin-top: 10px;">
                <ul>
                    <li><a href="#tabs-1">Academics</a></li>
                    <li><a href="#tabs-2">Admissions</a></li>
                    <li><a href="#tabs-3">Research</a></li>
                    <li><a href="#tabs-4">About</a></li>
                </ul>
                <!-- Academics tab-->
                <div class="tab" id="tabs-1">
                    <div class="container-img">
                        <img src="https://volgenau.gmu.edu/sites/g/files/yyqcgq321/files/styles/crop_header_background_image_tall/public/2020-10/AcademicsBG.jpg?itok=drcbIxmb" alt="" style="width:100%;">
                        <div class="bottom-left">
                            <h2>Academics</h2>
                        </div>
                    </div>
                    <div class="w3-row">
                        <p>When you study at Mason Engineering your classes, labs, and workshops provide the training and experience that will make you competitive when you graduate. Many of our degree programs have been designed with input from major technology
                            companies, which gives you an edge when you're looking for that first job. Ninety percent of Mason Engineering undergrads find careers in their chosen fields, and 10 percent go to graduate school. Among graduate students, 93
                            percent find positions in their areas of study.</p>
                    </div>
                    <div class="w3-row">
                        <div class="w3-col m3 parent" style="background-color: #006633; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>1500+</h2>
                                <h5>Engineering degrees granted in 2018</h5>
                            </div>
                        </div>
                        <div class="w3-col m3 parent" style="background-color: #425195; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>1 of 5</h2>
                                <h5>Schools in the country to offer a master's in data analytics engineering</h5>
                            </div>
                        </div>
                        <div class="w3-col m3 parent" style="background-color: #007b7c; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>&nbsp&nbsp500</h2>
                                <h5>&nbsp&nbspFaculty</h5>
                            </div>
                        </div>
                        <div class="w3-col m3 parent" style="background-color: #823676; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>11</h2>
                                <h5>Engineering based bachelor's degree programs</h5>
                            </div>
                        </div>
                    </div>
                    <div class="w3-row">
                        <div class="w3-col m4 parent" style="background-color: #8d2f3c; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>26</h2>
                                <h5>Graduate degree programs in engineering</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #6b469c; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>$6.25 million</h2>
                                <h5>MURI grant from the Department of Defense to create adaptive cyber security</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #006633; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>370</h2>
                                <h5>Cyber Security Engineering Students</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Admissions tab-->
                <div class="tab" id="tabs-2">
                    <div class="container-img">
                        <img src="https://volgenau.gmu.edu/sites/g/files/yyqcgq321/files/styles/crop_header_background_image_tall/public/2020-10/Banner03.jpg?itok=yLsI-9Lz" alt="" style="width:100%;">
                        <div class="bottom-left">
                            <h2>Admissions</h2>
                        </div>
                    </div>
                    <p>Volgenau programs include information sciences and technology, electrical and computer engineering, computer science, systems engineering and operations research, civil, environmental, and infrastructure engineering, statistics, and
                        bioengineering. Our faculty conducts research funded by the Department of Defense, the National Institutes of Health, and the National Science Foundation. Plus, we build really cool robots.</p>
                    <div class="w3-row">
                        <div class="w3-col m4 parent" style="background-color: #006633; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>26</h2>
                                <h5>Active student organizations</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #425195; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>231</h2>
                                <h5>Faculty members</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #007b7c; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>25+</h2>
                                <h5>years of experience in Big Data and cybersecurity</h5>
                            </div>
                        </div>
                    </div>
                    <div class="w3-row">
                        <div class="w3-col m6 parent" style="background-color: #8d2f3c; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>&nbsp&nbsp&nbsp8,000</h2>
                                <h5>&nbsp&nbsp&nbspStudents enrolled in 2018</h5>
                            </div>
                        </div>
                        <div class="w3-col m6 parent" style="background-color: #6b469c; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>8</h2>
                                <h5>Academic and research departments</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Research tab-->
                <div class="tab" id="tabs-3">
                    <div class="container-img">
                        <img src="https://volgenau.gmu.edu/sites/g/files/yyqcgq321/files/styles/crop_header_background_image_tall/public/2020-10/Banner04.jpg?itok=Jl2OWxkj" alt="" style="width:100%;">
                        <div class="bottom-left">
                            <h2>Research</h2>
                        </div>
                    </div>
                    <p>
                        The Volgenau School of Engineering is dedicated to finding creative solutions and developing useful technology to solve real-world problems, enhance people’s lives, and make our planet safer, cleaner, healthier, and more prosperous. We’re passionate about
                        research. We’re passionate about ideas. We’re passionate about our community. The future of engineering is here.
                    </p>
                    <div class="w3-row">
                        <div class="w3-col m4 parent" style="background-color: #006633; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>248</h2>
                                <h5>Faculty</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #425195; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>$64 million</h2>
                                <h5>In research expenditures in 2020</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #007b7c; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>$75 million</h2>
                                <h5>In research awards in 2020</h5>
                            </div>
                        </div>
                    </div>
                    <div class="w3-row">
                        <div class="w3-col m6 parent" style="background-color: #8d2f3c; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>>$500 million</h2>
                                <h5>Current and anticipated research awards</h5>
                            </div>
                        </div>
                        <div class="w3-col m6 parent" style="background-color: #6b469c; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>$7.4 million</h2>
                                <h5>Grant from IARPA to Learning Agents Center</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <!--About tab-->
                <div class="tab" id="tabs-4">
                    <div class="container-img">
                        <img src="https://volgenau.gmu.edu/sites/g/files/yyqcgq321/files/styles/crop_header_background_image_tall/public/2020-10/banner01.jpg?itok=rlf-MtTo" alt="" style="width:100%;">
                        <div class="bottom-left">
                            <h2>About</h2>
                        </div>
                    </div>
                    <p>
                        The Volgenau School of Engineering was founded in 1985 as George Mason University’s School of Information Technology and Engineering. Today, this large, multidisciplinary school maintains a dual pre-eminence in both information technology and engineering.
                        Through teaching, research, and practice, Mason Engineering seeks to graduate students who will take initiative, step up, and leave the planet better than they found it.
                    </p>
                    <div class="w3-row">
                        <div class="w3-col m4 parent" style="background-color: #006633; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>First</h2>
                                <h5>U.S. school of engineering with scholarship focused primarily on information technology-based engineering</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #DFA807; color: black; height: 200px;">
                            <div class="aligner">
                                <h2>7th</h2>
                                <h5>Cyber security program's national ranking by Ponemon Institute s</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #006633; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>25+</h2>
                                <h5>Years of experience in working with big data and cyber security</h5>
                            </div>
                        </div>
                    </div>
                    <div class="w3-row">
                        <div class="w3-col m4 parent" style="background-color: #DFA807; color: black; height: 200px;">
                            <div class="aligner">
                                <h2>$50+ Million</h2>
                                <h5>Research expenditures</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #006633; color: white; height: 200px;">
                            <div class="aligner">
                                <h2>7th</h2>
                                <h5>National ranking Return on Investment by Affordable Colleges Online</h5>
                            </div>
                        </div>
                        <div class="w3-col m4 parent" style="background-color: #DFA807; color: black; height: 200px;">
                            <div class="aligner">
                                <h2>$73 Million</h2>
                                <h5>New Research Awards in 2019</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Footer -->
        <div class="w3-row-padding w3-padding-16 w3-container" style="background-color: #006633;">
            <div class="w3-content w3-right">
                <a href="https://www2.gmu.edu/"><img src="gmu_white_logo.png" style="height: 125px;"></a>
            </div>
        </div>
    </div>
</body>

</html>