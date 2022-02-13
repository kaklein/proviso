package proviso

public class User {
    int id;
    String First_name;
    String Last_name;
    String email;
    String password;

    public User() {
    }

    public User(int id, String First_name, String Last_name, String email, String password) {
        this.id = id;
        this.First_name = First_name;
        this.Last_name = Last_name
        this.email = email;
        this.password = password;
    }

    public User(String First_name, String Last_name, String email, String password) {
        this.First_name = First_name;
        this.Last_name = Last_name
        this.email = email;
        this.password = password;
    }

    public User(String Last_name, String email, String password) {
        this.Last_name = Last_name
        this.email = email;
        this.password = password;   
    }
    
    public User(email, String password) {
        this.email = email;
        this.password = password;
        
    }
    
    public User(String password) {
        this.password = password;
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirst_Name() {
        return First_name;
    }

    public void setFirst_Name(String name) {
        this.name = First_name;
    }
    
    public String getLast_Name() {
        return Last_name;
    }

    public void setLast_Name(String name) {
        this.name = Last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}

