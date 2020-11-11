import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.time.LocalDate;
import java.io.*;

public class MySqlDataStoreUtilities {
    static Connection conn = null;
    static String message;

    public static String getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/homehubsql", "root", "3306");
            System.out.println("Trying SQL connection.");
            message = "Successfull";
            return message;
        } catch (SQLException e) {
            System.out.println("SQL connection unsuccessful.");
            message = "unsuccessful";
            return message;

        } catch (Exception e) {
            message = e.getMessage();
            return message;
        }
    }

    public static HashMap < String, User > selectUser() {
        HashMap < String, User > hm = new HashMap < String, User > ();
        try {
            getConnection();
            Statement stmt = conn.createStatement();
            String query = "select * from  User;";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                System.out.println(rs.getString("firstName"));
                User user = new User(rs.getString("userId"),rs.getString("firstName"),rs.getString("middleName"),rs.getString("lastName"), rs.getString("password"),rs.getString("email"),rs.getString("phone"), rs.getString("usertype"));
                hm.put(rs.getString("userId"), user);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return hm;
    }

    public static void insertUser(User user) {
        try {
            getConnection();
            String query = "INSERT INTO User(userId,firstname,middlename,lastname,password,email,phone,usertype)" +
                "VALUES (?,?,?,?,?,?,?,?);";

            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, user.getUserId());
            pst.setString(2, user.getFirstName());
            pst.setString(3, user.getMiddleName());
            pst.setString(4, user.getLastName());
            pst.setString(5, user.getPassword());
            pst.setString(6, user.getEmail());
            pst.setString(7, user.getPhone());
            pst.setString(8, user.getUsertype());
            pst.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static HashMap<String,City> getCities() {
        HashMap <String,City> cities = new HashMap <String, City>();
        try {
            getConnection();
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM City ";
            ResultSet rs = stmt.executeQuery(query);
            
            while (rs.next()) {
                City city = new City(rs.getString("code"),rs.getString("name"),rs.getString("state"),rs.getString("country"));
                cities.put(rs.getString("code"), city);
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return cities;
    }

    public static ArrayList<Professional> getProfessionals(String city, String category) {
        ArrayList<Professional> professionals = new ArrayList<Professional>();
        try {
            getConnection();
            
            String query = "select * from  professional where approved=true and city=? and category=?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, city);
            pst.setString(2, category);
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                Professional professional = new Professional(rs.getString("id"),rs.getString("firstName"),rs.getString("middleName"),rs.getString("lastName"),rs.getString("city"),rs.getString("email"),rs.getString("category"),rs.getString("phone"),rs.getString("street"),rs.getString("zip"),rs.getDouble("latitude"),rs.getDouble("longitude"),rs.getString("image"));
                professionals.add(professional);
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return professionals;
    }


}