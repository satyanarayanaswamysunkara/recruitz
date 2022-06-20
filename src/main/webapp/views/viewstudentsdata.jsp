<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
	<title>View Student</title>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <style>
        
        
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
        }
        nav{
        display: flex;
        height: 80px;
        width: 100%;
        background: #1b1b1b;
        align-items: center;
        justify-content: space-between;
        padding: 0 50px 0 100px;
        flex-wrap: wrap;
        }
        nav .logo{
        color: #fff;
        font-size: 30px;
        font-weight: 500;
        top:0;
        }
        nav ul{
        display: flex;
        flex-wrap: wrap;
        list-style: none;
        }
        nav ul li{
        margin: 10 3px;
        }
        nav ul li a{
        color: #f2f2f2;
        text-decoration: none;
        font-size: 15px;
        font-weight: 300;
        padding: 8px 15px;
        border-radius: 5px;
        letter-spacing: 1px;
        transition: all 0.3s ease;
        }
        nav ul li a.active,
        nav ul li a:hover{
        color: #111;
        background: #fff;
        }
        nav .menu-btn i{
        color: #fff;
        font-size: 22px;
        cursor: pointer;
        display: none;
        }
        input[type="checkbox"]{
        display: none;
        }
        @media (max-width: 1000px){
        nav{
        padding: 0 40px 0 50px;
        }
        }
        @media (max-width: 920px) {
        nav .menu-btn i{
        display: block;
        }
        #click:checked ~ .menu-btn i:before{
        content: "\f00d";
        }
        nav ul{
        position: fixed;
        top: 80px;
        left: -100%;
        background: #111;
        height: 100vh;
        width: 100%;
        text-align: left;
        display: block;
        transition: all 0.3s ease;
        }
        #click:checked ~ ul{
        left: 0;
        }
        nav ul li{
        width: 100%;
        margin: 40px 0;
        }
        nav ul li a{
        width: 100%;
        margin-left: -100%;
        display: block;
        font-size: 20px;
        transition: 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }
        #click:checked ~ ul li a{
        margin-left: 0px;
        }
        nav ul li a.active,
        nav ul li a:hover{
        background: none;
        color: cyan;
        }
        }
        .content{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        z-index: -1;
        width: 100%;
        padding: 0 30px;
        color: #1b1b1b;
        }
        .content div{
        font-size: 40px;
        font-weight: 700;
        }
        
        
        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
    background: #f7f7ff;
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: .25rem;
    margin-bottom: 1.5rem;
    box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
}
.me-2 {
    margin-right: .5rem!important;
}
</style>
<nav>
    <div class="logo">
        Recruitz
</div>
<br>

<input type="checkbox" id="click">
<label for="click" class="menu-btn">
<i class="fas fa-bars"></i>
</label>
<ul>
    <li><a href="/addjob">Add Job</a></li>
    <li><a href="/viewjobs">View Jobs</a></li>
    <li><a href="/viewapplications">Applications</a></li>
    <li><a href="/recruiterschedules">Schedules</a></li>
    <li><a class="active" href="/viewapplications">My Profile</a></li>
    <li> <a href="/logout">Log out</a> </li>
</ul>
</nav>
    </head>
    <body>
        
     
        <br><br>
        
        <div class="container">
            <div class="main-body">
                <div class="row">
                    <div class="col-lg-8">
                    <c:forEach var="studper" items="${studpersonal}">
                    
                        <div class="card">
                            <br>
                            <center><h3><i class="fa fa-address-card" aria-hidden="true"></i>&nbsp;Personal Details</h3></center>
                            <br>
                            <div class="card-body">
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Student ID</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="number" disabled=""  class="form-control" value="${studper.studId}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">First Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="text"  class="form-control" value="${studper.studFName}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Last Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="text"  class="form-control" value="${studper.studLName}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="email" class="form-control" value="${studper.studEmail}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Password</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="password" class="form-control" value="${studper.studPassword}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="number"  class="form-control" value="${studper.studPhone}"/>
                                    </div>
                                </div>
                                
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="text"  class="form-control" value="${studper.studLocation}"/>
                                    </div>
                                </div>
                                  
                                            <br>
                                
                                <br>
                            </div>
                        </div>
                       
                        </c:forEach>
                        <br>
                        
                        <!-- <div class="col-lg-8"> -->
                        <c:forEach var="studedu" items="${studeducational}">
                        
                            <div class="card">
                                <br>
                                <center><h3><i class="fa fa-address-card" aria-hidden="true"></i>&nbsp;Educational Details</h3></center>
                                <br>
                                <hr>
                                <h5 style="margin: 30px;"><b>Under Graduate Details</b></h5>
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">College Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" class="form-control"  value="${studedu.ugcollegename}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Branch</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" class="form-control"  value="${studedu.ugbranch}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">CGPA</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="number" class="form-control" value="${studedu.ugcgpa}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Year Passed</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="number" class="form-control"  value="${studedu.ugyear}"/>
                                        </div>
                                    </div>
                                    <br>
                                    <hr>

                                    <h5 style="margin: 30px;"><b>Secondary School Details</b></h5>
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">College Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" class="form-control" value="${studedu.sscollegename}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Branch</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" class="form-control" value="${studedu.ssbranch}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">CGPA</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="number" class="form-control" value="${studedu.sscgpa}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Year Passed</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="number" class="form-control" value="${studedu.ssyear}"/>
                                        </div>
                                    </div>
                                    <br>
                                    <hr>


                                    <h5 style="margin: 30px;"><b>Primary School Details</b></h5>
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">School Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" class="form-control" value="${studedu.psschoolname}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Branch</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" class="form-control" value="${studedu.psbranch}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">CGPA</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="number" class="form-control" value="${studedu.pscgpa}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Year Passed</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="number" class="form-control" value="${studedu.psyear}"/>
                                        </div>
                                    </div>
                                    <br>
                                    <hr>
                                    <h5 style="margin: 30px;"><b>Skills And Resume</b></h5>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Add Skill</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" class="form-control"  value="${studedu.skills}"/>
                                        </div>
                                    </div>
                                
                                                <br>
                                    <div class="row">
                                        <div class="col-sm-3"></div>
                                        <div class="col-sm-9 text-secondary">
                                            <a href="/viewapplications"><input type="submit" class="btn btn-primary px-4" value="OK"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                    </div>
                   
                     </c:forEach>
                </div>
            </div>
        </div>
    </body>
    
</html>