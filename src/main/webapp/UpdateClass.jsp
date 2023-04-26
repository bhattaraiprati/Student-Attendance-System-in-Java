<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="updateclass.css" />
    <title>Document</title>
    <style>
        .dec{
            color: white;
            text-decoration: none;
        }
        /*.section{*/
        /*    position: absolute;*/
        /*    right: 46vh;*/
        /*    top: 40vh;*/
        /*    font-size: 19px;*/
        /*    font-weight: 550;*/
        /*    !* margin: 34px 15px 10px 95px; *!*/
        /*    color: #0d6efd;*/
        /*    !* display: flex; *!*/
        /*}*/
        /*.ctitle{*/
        /*    position: absolute;*/
        /*    right: 46vh;*/
        /*    top: 67vh;*/
        /*    font-size: 19px;*/
        /*    font-weight: 550;*/
        /*    !* margin: 34px 15px 10px 95px; *!*/
        /*    color: #0d6efd;*/
        /*}*/
        /*.cnumber{*/
        /*    height: 37px;*/
        /*    width: 200px;*/
        /*    padding: 5px;*/
        /*    margin-left: 133px;*/
        /*    margin-top: 6px;*/
        /*    font-size: 16px;*/
        /*    border: 0.5px solid black;*/
        /*    border-radius: 5px;*/
        /*}*/
        /*.drop2{*/
        /*    height: 35px;*/
        /*    width: 200px;*/
        /*    position: absolute;*/
        /*    right: 34vh;*/
        /*    top: 43vh;*/
        /*    margin-top: 18px;*/
        /*    font-size: 16px;*/
        /*    border-radius: 5px;*/
        /*}*/
        /*.submit{*/
        /*    height: 35px;*/
        /*    width: 100px;*/
        /*    position: absolute;*/
        /*    margin-left: 16vh;*/
        /*    margin-top: 10vh;*/
        /*    border-radius: 5px;*/
        /*    border: 0.5px solid lightblue;*/
        /*    background-color:#0d6efd;*/
        /*    color: white;*/
        /*    font-size: 17px;*/
        /*}*/
    </style>
</head>
<body>
<nav>
    <div class="navbar">
        <div class="align">
            <span class="Tname">Attendance System</span>
            <img src="Photos/user.png" class="user" alt="" />
            <span class="Pname"> Pratik Bhattarai</span>
            <span class="Pemail">pratikb957@gmail.com</span>
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
            <form action="#" >
                <span class="title">Update Class</span>

                <!-- <p class="from">From:</p> -->
                <p class="semester">Current Semester</p>
                <select name="value1" class="drop1" id="cars">
                    <option class="option">Semester 1</option>
                    <option class="option">Semester 2</option>
                    <option class="option">Semester 3</option>
                    <option class="option">Semester 4</option>
                </select>

                <p class="section">Current Section</p>
                <!-- <span>Section</span> -->
                <select name="section" class="drop2" >
                    <option class="option">none</option>
                    <option class="option">A</option>
                    <option class="option">B</option>
                    <option class="option">C</option>
                    <option class="option">D</option>
                </select>
                <!-- <p class="from">To:</p> -->
                <p class="ntitle">Promote To Semester</p>
                <input type="text" name="sname" class="sname" >

                <p class="ctitle">Promote To Section</p>
                <input type="text" name="cnumber" class="cnumber" >



                <input type="submit" name="" class="submit" value="Submit" >
            </form>
        </div>
    </div>
</main>
</body>
</html>
