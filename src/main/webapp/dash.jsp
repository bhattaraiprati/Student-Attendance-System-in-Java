<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="Dash.css" />
    <title>Document</title>
    <style>
        .Pname {
            margin-left: 186vh;
        }
        .Pemail{
            margin-left: 186vh;
        }
    </style>
</head>
<body>
<nav>
    <div class="navbar">
        <div class="align">
            <span class="Tname">Attendance System</span>
            <img src="Photos/user.png" class="user" alt="" />
            <span class="Pname"> ${college.userName}</span>
            <span class="Pemail">${college.email}</span>
            <!-- <p class="Tname">Student Attendance System</p> -->
            <!-- <p class="Pname">Pratik Bhattarai</p> -->
        </div>
    </div>
</nav>
<main>
    <div class="leftmenu">
        <div>

            <dl class="attendl1">
                <img src="Photos/atten.png" class="atten" alt="#" />
                <dt class="filter-box">Attendance</dt>
            </dl>
        </div>
        <div>
            <a href="user?page=attenlist" class="demo">
            <dl class="attendl1">
                <img src="Photos/list.png" class="member" alt="#" />
                <dt class="filter-box2">Attendance List</dt>
            </dl>
        </a>
        </div>
        <div>
            <a href="user?page=addmem" class="demo">
            <dl class="attendl1">
                <img src="Photos/add member.png" class="member" alt="#" />
                <dt class="filter-box2">Add Member</dt>
            </dl>
        </a>
        </div>

        <div>
            <a href="user?page=addclass" class="demo">
                <dl class="attendl1">
                    <img src="Photos/add class.png" class="aclass" alt="#" />
                    <dt class="filter-box2">Add class</dt>
                </dl>
            </a>
        </div>

        <div>
            <a href="user?page=update" class="demo">
                <dl class="attendl1">
                    <img src="Photos/update class.png" class="uclass" alt="#" />
                    <dt class="filter-box2">Update class</dt>
                </dl>
            </a>
        </div>
        <div>
            <dl class="attendl1">
                <img src="Photos/logout.png" class="log" alt="#" />
                <dt class="filter-box2">Logout</dt>
            </dl>
        </div>
        <div>
            <dl class="attendl1">
                <img src="Photos/change password.png" class="cpass" alt="#" />
                <dt class="filter-box2">Change Password</dt>
            </dl>
        </div>
    </div>

    <div class="main">
        <div class="main-top">
            <p class="semester">Semester:</p>
            <!-- <span class="semester">Semester</span> -->
            <select name="value1" class="drop1" >
                <c:forEach items="${semesterList}" var="semesterDetails">
                <option class="option">${semesters.semester}</option>
<%--                <option class="option">${semesters.semester}</option>--%>
<%--                <option class="option">Semester 3</option>--%>
<%--                <option class="option">Semester 4</option>--%>
                </c:forEach>
            </select>
            <p class="semester">Section:</p>
            <!-- <span>Section</span> -->
            <select name="cars" class="drop2">
                <option class="option">none</option>
                <option class="option">A</option>
                <option class="option">B</option>
                <option class="option">C</option>
                <option class="option">D</option>
            </select>
            <p class="semester">Date:</p>
            <!-- <span>Date</span> -->
            <input type="date" class="drop3" name="date" value="">
            <!-- <select name="cars"  class="drop1" id="cars">

            </select> -->
            <p class="semester">Subject:</p>
            <!-- <span>Subject</span> -->
            <select name="cars"  class="drop1" >
                <option class="option">Information Literacy</option>
                <option class="option">OOP</option>
                <option class="option">Computer Ethics</option>
                <option class="option">Database</option>
            </select>
            <input type="button" href="" name="" class="view" value="View">
        </div>
        <div class="item-list">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col" class="list1" >Name</th>
                    <th scope="col" class="list2" >Phone Number</th>
                    <th scope="col" class="list3" >Email</th>
                    <th scope="col" class="list4" >Status</th>
                    <th scope="col" class="list5" >Operation</th>
                    <!-- <td><a href="user?page=Adduser&id=${college.id}">Add user</a></td> -->
                </tr>
                </thead>


                <tbody>
                <c:forEach items="${semesterDetailsList}" var="semesterDetails">
                    <tr>
                        <td class="classlist">${semesterDetails.semester}</td>
                            <%--                            <td>${semesterDetails.sectionName}</td>--%>
                            <%--                            <td>${college.password}</td>--%>
                            <%--                            <td>${college.location}</td>--%>
                    </tr>
                </c:forEach>
                <td>${semesterDetails.section}</td>
                </tbody>
            </table>
        </div>
    </div>
</main>
</body>
</html>
