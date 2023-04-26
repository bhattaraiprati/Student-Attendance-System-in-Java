package Service;

import DBConnection.DBConnection;
import Model.College;
import Model.SemesterDetails;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

public class UserService extends HttpServlet {

    //INSERT USER:
    public void insertUser(College college) {
        String query = "insert into login (userName, email, password)" + "values(?,?,?)";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
//        System.out.println("outer ");
        try {
            preparedStatement.setString(1, college.getUserName());
            preparedStatement.setString(2, college.getEmail());
            preparedStatement.setString(3, college.getPassword());
            preparedStatement.execute();
//            System.out.println("internal value");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    //DELETE USER:
    public void deleteUser(int id) {
        String query = "delete from user where id=?";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);

        try {
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //UPDATE USER:
//    public void editUser(int id, College college) throws SQLException {
//
//        String query = "update from user set userName=?, password=?, location=?" + "where id=?";
//        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
//
//        preparedStatement.setString(1, college.getUserName());
//        preparedStatement.setString(2, college.getPassword());
//        preparedStatement.setString(3, college.getLocation());
//        preparedStatement.setInt(4, id);
//        preparedStatement.execute();
//
//    }

    //LOGIN USER:
    public College loginUser(String email, String password) {
        String query = "select * from login where email=? and password=? ";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        College college = null;


        try {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);


            ResultSet resultSet = preparedStatement.executeQuery();

//            System.out.println(resultSet.next());

            while (resultSet.next()) {
                college = new College();

//                college.setId(resultSet.getInt("id"));
                college.setPassword(resultSet.getString("password"));
                college.setEmail(resultSet.getString("email"));
                college.setUserName(resultSet.getString("userName"));

            }


        } catch (SQLException e) {
            System.out.println(e);
            e.printStackTrace();

        }

        return college;


    }
    public List<SemesterDetails> semesterList(){
        String sql = "SELECT DISTINCT semesterName FROM semester ORDER BY semesterName ASC";

        ArrayList<SemesterDetails> semesterDetailsList = new ArrayList<>();
        PreparedStatement preparedStatement1 = new DBConnection().getSql(sql);
        SemesterDetails semesterDetails = new SemesterDetails();
        try {
            ResultSet resultSet1 = preparedStatement1.executeQuery();


            while (resultSet1.next()){

                semesterDetails.setSemester(resultSet1.getString("semesterName"));

//                System.out.println("the semestyer details is "+ semesterDetails);

                semesterDetailsList.add(semesterDetails);
            }
//            System.out.println(semesterDetailsList);


        }catch (Exception e){
            e.printStackTrace();
        }
            return semesterDetailsList;
//        return semesterDetails;
    }

    public void AddMember(SemesterDetails semesterDetails){
        String query = "insert into addmember (semester, section, username, contact, email)" + "values(?,?,?,?,?)";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1,semesterDetails.getSemester());
            preparedStatement.setString(2,semesterDetails.getSection());
            preparedStatement.setString(3,semesterDetails.getUsername());
            preparedStatement.setInt(4,semesterDetails.getContact());
            preparedStatement.setString(5,semesterDetails.getEmail());
            preparedStatement.execute();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void AddClass(String semester, String[] selectdata)  {
        String Semester = semester;
        String Semester1 = semester;
//        System.out.println(section);
        String query = "Insert into semester (semesterName) " + "value(?)";
        String ID = "Select semesterID from semester where semesterName =?";
        String sql = "Insert into section (sectionName,semesterID)" + "value(?,?)";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        PreparedStatement preparedStatement2 = new DBConnection().getID(ID);
        PreparedStatement preparedStatement1 = new DBConnection().getSql(sql);

        try {

            preparedStatement.setString(1, Semester);
            preparedStatement2.setString(1, Semester1);
//            System.out.println(Semester1);
            preparedStatement.execute();
            ResultSet resultSet = preparedStatement2.executeQuery();
            SemesterDetails semesterDetails = null;
            int sem = 0;
            while (resultSet.next()) {
//                College college = new College();
                semesterDetails = new SemesterDetails();
//                System.out.println("hello");
                sem = semesterDetails.setID(resultSet.getInt("semesterID"));
            }
//            System.out.println(sem);

            for (String value : selectdata ) {
            preparedStatement1.setString(1, value);
                preparedStatement1.setInt(2, sem);
                System.out.println(value);
                preparedStatement1.execute();
            }

        }catch (Exception e){
            e.printStackTrace();
        }

    }

//    public SemesterDetails

    public List<SemesterDetails> getUserList() {

        ArrayList<SemesterDetails> semesterDetailsList = new ArrayList<>();

        String query = "select * from semester";
        String ID = "Select semesterID from semester where semesterName =?";
        String sql = "select sectionName from section where semesterID =?";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        PreparedStatement preparedStatement2 = new DBConnection().getID(ID);
        PreparedStatement preparedStatement1 = new DBConnection().getSql(sql);

        try {
            ResultSet resultSet = preparedStatement.executeQuery();
//            ResultSet resultSet1 = preparedStatement1.executeQuery();
//            System.out.println(resultSet);

            while (resultSet.next()) {

                SemesterDetails semesterDetails = new SemesterDetails();
//                System.out.println("i am disco dancer");
                semesterDetails.setSemester(resultSet.getString("semesterName"));
//                semesterDetails.setSection(resultSet.getString("sectionName"));
//                    preparedStatement2.setString(1, String.valueOf(semesterDetails));
//                ResultSet resultSet2 = preparedStatement2.executeQuery();
//                System.out.println(resultSet2);
                int a = 0;
//                while (resultSet2.next()){
//                    a = semesterDetails.setID(resultSet2.getInt("semesterID"));
//                    System.out.println("the value of a is "+ a);
//                }
//                preparedStatement1.setString(1, String.valueOf(a));
//                ResultSet resultSet1 = preparedStatement1.executeQuery();
//                while (resultSet1.next()){
//                    semesterDetails.setSection(resultSet1.getString("sectionName"));
//                }

//                System.out.println(semesterDetails);

                semesterDetailsList.add(semesterDetails);
            }

//            while (resultSet1.next()){
//                SemesterDetails semesterDetails = new SemesterDetails();
//                semesterDetails.setSection(resultSet1.getString("sectionName"));
//                semesterDetailsList.add(semesterDetails);
//                System.out.println(semesterDetails);
//            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return semesterDetailsList;
    }
//    //
//    public College getRow(int id) {
//
//        String query = "select * from user where id=?";
//        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
//
//        College college = new College();
//
//        try {
//            preparedStatement.setInt(1, id);
//            ResultSet resultSet = preparedStatement.executeQuery();
//
//            while (resultSet.next()) {
//                college.setId(resultSet.getInt("id"));
//                college.setUserName(resultSet.getString("userName"));
//                college.setPassword(resultSet.getString("password"));
//                college.setLocation(resultSet.getString("location"));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return college;
//    }


}
