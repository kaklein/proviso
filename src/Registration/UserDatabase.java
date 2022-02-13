package proviso;

import java.sql.*;

public class UserDatabase {
    Connection con ;

    public UserDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveUser(User userdb){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into user(First_name,Last_name,email,password) values(?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, userdb.getFirst_Name());
           pt.setString(1, userdb.getLast_Name());
           pt.setString(2, userdb.getEmail());
           pt.setString(3, userdb.getPassword());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
}

