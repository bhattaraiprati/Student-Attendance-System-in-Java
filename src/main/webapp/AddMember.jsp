<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="addmem.css" />
    <title>Document</title>
    <style>
        .dec{
            color: white;
            text-decoration: none;
        }
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
            <a href="user?page=atten"  class="dec">
            <dl class="attendl1">
                <img src="Photos/atten.png" class="atten" alt="#" />
                <dt class="filter-box">Attendance</dt>
            </dl>
            </a>
        </div>
        <div><a href="user?page=attenlist" class="demo">
            <dl class="attendl1">
                <img src="Photos/list.png" class="member" alt="#" />
                <dt class="filter-box2">Attendance List</dt>
            </dl>
        </a>
        </div>
        <div>
            <a href="user?page=addmem"  class="dec">
            <dl class="attendl1">
                <img src="Photos/add member.png" class="member" alt="#" />
                <dt class="filter-box2">Add Member</dt>
            </dl>
            </a>
        </div>

        <div>
            <a href="user?page=addclass"  class="dec">
            <dl class="attendl1">
                <img src="Photos/add class.png" class="aclass" alt="#" />
                <dt class="filter-box2">Add class</dt>
            </dl>
            </a>
        </div>

        <div>
            <a href="user?page=update"  class="dec">
            <dl class="attendl1">
                <img src="Photos/update class.png" class="uclass" alt="#" />
                <dt class="filter-box2">Update class</dt>
            </dl>
            </a>
        </div>
        <div>
            <a href="user?page=log"  class="dec">
            <dl class="attendl1">
                <img src="Photos/logout.png" class="log" alt="#" />
                <dt class="filter-box2">Logout</dt>
            </dl>
            </a>
        </div>
        <div>
            <a href="user?page=change"  class="dec">
            <dl class="attendl1">
                <img src="Photos/change password.png" class="cpass" alt="#" />
                <dt class="filter-box2">Change Password</dt>
            </dl>
            </a>
        </div>
    </div>

    <div class="main">
        <div class="container">
            <form action="user?page=addmember" method="post" >
                <span class="title">Add Member</span>
                <div class="addmemb">
                    <p class="semester">Select Semester</p>
                    <select name="value1" class="drop1" >
                        <option class="option">Semester 1</option>
                        <option class="option">Semester 2</option>
                        <option class="option">Semester 3</option>
                        <option class="option">Semester 4</option>
                    </select>

                    <p class="section">Section:</p>
                    <!-- <span>Section</span> -->
                    <select name="section" class="drop2" >
                        <option class="option">none</option>
                        <option class="option">A</option>
                        <option class="option">B</option>
                        <option class="option">C</option>
                        <option class="option">D</option>
                    </select>
                </div>
                <p class="ntitle">Enter Name of Student</p>
                <input type="text" name="sname" class="sname" >

                <p class="ctitle">Contact Number</p>
                <input type="number" name="cnumber" class="cnumber" >
                <!-- <input type="text"> -->

                <p class="ntitle">Enter Email Address</p>
                <input type="email" name="semail" class="sname" >

                <input type="submit" name="" class="submit" value="Submit" >
            </form>
        </div>
    </div>
</main>
</body>
</html>
