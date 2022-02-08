package proviso.model;

public class User {
	private int id;
	private String email;
	private String password;
  private int points;
	
  // use this constructor when creating a new user (id not generated yet)
	public User(String email, String password) {
    this.email = email;
    this.password = password;
    this.points = 0;
	}

  // use this constructor if pulling from the database
	public User(int id, String email, String password, int points) {
		this.id = id;
    this.email = email;
    this.password = password;
    this.points = points;
	}

  public int getId() { return id; }

  public String getEmail() { return email; }
  public void setEmail(String email) { this.email = email; }

  public String getPassword() { return password; }
  public void setPassword(String password) { this.password = password; }
  
  public int getPoints() { return points; }
  public void setPoints(int points) { this.points = points; }
  
}
