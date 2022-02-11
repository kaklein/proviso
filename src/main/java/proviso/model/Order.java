package proviso.model;

public class Order {
	private int id;
	private int customerId;
	private String checkin;
	private String checkout;
  private String room;
  private Boolean wifi;
  private Boolean breakfast;
  private Boolean parking;
  private int guests;
  private float price;
  private int pointsEarned;
	
  // use this constructor when creating an order (id not generated yet)
	public Order(int customerId, String checkin, String checkout, String room, Boolean wifi, Boolean breakfast, Boolean parking, int guests, float price, int pointsEarned) {
    this.customerId = customerId;
    this.checkin = checkin;
    this.checkout = checkout;
    this.room = room;
    this.wifi = wifi;
    this.breakfast = breakfast;
    this.parking = parking;
    this.guests = guests;
    this.price = price;
    this.pointsEarned = pointsEarned;
	}

  // use this constructor if pulling from the database
	public Order(int id, int customerId, String checkin, String checkout, String room, Boolean wifi, Boolean breakfast, Boolean parking, int guests, float price, int pointsEarned) {
    this.customerId = customerId;
    this.checkin = checkin;
    this.checkout = checkout;
    this.room = room;
    this.wifi = wifi;
    this.breakfast = breakfast;
    this.parking = parking;
    this.guests = guests;
    this.price = price;
    this.pointsEarned = pointsEarned;
	}

  public int getId() { return id; }
  
  public int getCustomerId() { return customerId; }
  public void setCustomerId(int customerId) { this.customerId = customerId; }

  public String getCheckin() { return checkin; }
  public void setCheckin(String checkin) { this.checkin = checkin; }

  public String getCheckout() { return checkout; }
  public void setCheckout(String checkout) { this.checkout = checkout; }

  public String getRoom() { return room; }
  public void setRoom(String room) { this.room = room; }

  public Boolean getWifi() { return wifi; }
  public void setWifi(Boolean wifi) { this.wifi = wifi; }

  public Boolean getBreakfast() { return breakfast; }
  public void setBreakfast(Boolean breakfast) { this.breakfast = breakfast; }

  public Boolean getParking() { return parking; }
  public void setParking(Boolean parking) { this.parking = parking; }
  
  public int getGuests() { return guests; }
  public void setGuests(int guests) { this.guests = guests; }
  
  public float getPrice() { return price; }
  public void setPrice(int price) { this.price = price; }
  
  public int getPointsEarned() { return pointsEarned; }
  public void setPointsEarned(int pointsEarned) { this.pointsEarned = pointsEarned; }
  
}
