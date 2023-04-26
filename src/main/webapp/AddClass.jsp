<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="addclass.css" >
    <title>Document</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>
        .Pname {
            margin-left: 186vh;
        }
        .Pemail{
            margin-left: 186vh;
        }
        .dec{
            color: white;
            text-decoration: none;
        }
        .sname{
            margin-left: 34px;
            margin-top: 10px;
        }
        .classlist{
            padding: 20px 0px 0px 55px;
            width: 67px;
        }
        .container1{
            position: relative;
            max-width: 203px;
            width: 215px;
            margin: 62px 0px 14px 36px;
            border-radius: 8px;
        }
        .select-btn{
            display: flex;
            height: 37px;
            align-items: center;
            justify-content: space-between;
            padding: 0px 4px 0px 8px;
            border-radius: 5px;
            cursor: pointer;
            background-color: #ffffff;
            border: 1px solid black;
            /*box-shadow: 0 5px 10px rgb(0, 0, 0, 0.1);*/

        }
        .chevron{
            height: 17px;
            width: 16px;
        }
        .select-btn .btn-text{
            font-size: 17px;
            font-weight: 400;
            color: #333333;
        }
        .select-btn .arrow-dwn{
            display: flex;
            align-items: center;
            justify-content: center;
            transition: 0.3s;
        }
        .select-btn.open .arrow-dwn{
            transform: rotate(-180deg);
        }
        .list-items {
            z-index: 1;
            position: relative;
            margin-top: 15px;
            border: 0.5px solid black;
            border-radius: 8px;
            padding: 16px;
            background-color: #ffffff;
            display: none;
        }
        .select-btn.open ~ .list-items{
            display: block;
        }
        .list-items .item{
            display: flex;
            align-items: center;
            list-style: none;
            height: 40px;
            cursor: pointer;
            transition: 0.3s;
            padding: 0 15px;
            border-radius: 5px;
        }
        .list-items .item:hover{
            background-color: #e7edfe;
        }
        .item .item-text{
            font-size: 16px;
            font-weight: 400;
            margin-left: 10px;
            color: black;
        }
        .item .checkbox{
            display: flex;
            align-items: center;
            justify-content: center;
            height: 16px;
            width: 16px;
            border-radius: 4px;
            margin-right: 12px;
            border: 1px solid black;
            transition: all 0.3s ease-in-out;
        }
        .item.checked .checkbox{
            background-color: #4070f4;
            border-color: #4070f4;
        }
        .checkbox .check-icon{
            color: white;
            height: 15px;
            transform: scale(0);
            transition: all 0.3s ease-in-out;
        }
        .item.checked .check-icon{
            transform: scale(1);
        }
        .submit{
            top: 68vh;
        }
        .ctitle{
            top: 47vh;
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

        <div >
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
            <form action="user?page=class"  method="post">
                <span class="title">Add Class</span>

<%--                <p class="ntitle">Enter Semester</p>--%>
<%--                <input type="text" name="sname" class="sname" >--%>

<%--                <p class="ctitle">Section</p>--%>
<%--                <input type="text" name="cnumber" class="cnumber" >--%>
                <!-- <input type="text"> -->
                <p class="ntitle">Select Semester</p>
                <select  name="sname" class="sname" >

                    <option class="option">Semester 1</option>
                    <option class="option">Semester 2</option>
                    <option class="option">Semester 3</option>
                    <option class="option">Semester 4</option>
                </select>
                <p class="ctitle">Section</p>
                <div class="container1">
                    <div class="select-btn">
                        <span class="btn-text">Select Section</span>
                        <span class="arrow-dwn">
                            <img src="Photos/chevron.png" alt="#" class="chevron">
<%--                         <i class="fa-solid fa-chevron-down"></i>--%>
                        </span>
                    </div>
                    <ul class="list-items" >
                        <li class="item"  >
<%--                            <span class="checkbox">--%>
<%--                                <img src="Photos/done.png" alt="#" class="check-icon">--%>
<%--&lt;%&ndash;                                <i class="fa-solid fa-check"></i>&ndash;%&gt;--%>
<%--                            </span>--%>
<%--                            <span class="checkbox">--%>
<%--                               --%>
<%--                            </span>--%>
                            <input type="checkbox" class="check-icon" name="selectdata[]" value="A">

                            <span class="item-text" > A</span>
                        </li>
                        <li class="item"  >
<%--                            <span class="checkbox">--%>
<%--                                <img src="Photos/done.png" alt="#" class="check-icon">--%>
<%--                                --%>
<%--                                <i class="fa-solid fa-check"></i>--%>
<%--                            </span>--%>
                            <input type="checkbox" class="check-icon" name="selectdata[]" value="B">
                            <span class="item-text"  > B</span>
                        </li>
                        <li class="item" >
<%--                            <span class="checkbox">--%>
<%--                                <img src="Photos/done.png" alt="#" class="check-icon">--%>
<%--                               --%>
<%--                                <i class="fa-solid fa-check"></i>--%>
<%--                            </span>--%>
                            <input type="checkbox" class="check-icon" name="selectdata[]" value="C">
                            <span class="item-text"  > C</span>
                        </li>
                    </ul>

                </div>
<%--                <select class="select" multiple data-mdb-placeholder="Example placeholder" multiple>--%>
<%--                    <option value="1">One</option>--%>
<%--                    <option value="2">Two</option>--%>
<%--                    <option value="3">Three</option>--%>
<%--                    <option value="4">Four</option>--%>
<%--                    <option value="5">Five</option>--%>
<%--                </select>--%>


                <input type="submit" name="" class="submit" value="Submit" >
            </form>
        </div>
        <div class="container2">
            <div class="item-list">
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col" class="list1" >Semester</th>
                        <th scope="col" class="list2" >Section</th>
                        <th scope="col" class="list3" >Details</th>
                        <th scope="col" class="list4" >Action</th>

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
    </div>
</main>
<script>
    const selectBtn = document.querySelector(".select-btn"),
        items = document.querySelectorAll(".item");
    selectBtn.addEventListener("click", ()=>{
        selectBtn.classList.toggle("open");
    });
    items.forEach(item =>{
        item.addEventListener("click", () =>{
            item.classList.toggle("checked");

            let checked = document.querySelectorAll(".checked"),
                btnText = document.querySelector(".btn-text");


            if (checked && checked.length > 0){
                btnText.innerText = '${checked.length} Selected';
                console.log(checked.length);
                console.log("valid");
            }
            else {
                btnText.innerText = "Select Section";
                console.log("invalid");
            }
        })
    })


</script>
</body>

</html>
