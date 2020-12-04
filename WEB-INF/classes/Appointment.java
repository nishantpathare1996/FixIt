import java.time.LocalTime;
import java.time.LocalDate;

/* 
	Users class contains class variables id,name,password,usertype.

	Users class has a constructor with Arguments name, String password, String usertype.
	  
	Users  class contains getters and setters for id,name,password,usertype.

*/

public class Appointment {
    private String id;
	private String userId;
	private String techId;
    private String street;
    private String zip;
    private LocalDate orderDate;
	private LocalDate scheduledDate;
    private LocalTime time;
    private String status = "pending";
	
	public Appointment(String userId,String techId,String street,String zip, LocalDate scheduledDate, LocalTime time) {
        this.userId = userId;
		this.techId = techId;
        this.street = street;
        this.zip = zip;
		this.orderDate = LocalDate.now();
        this.scheduledDate = scheduledDate;
        this.time = time;
	}

	// public User(String userId,String fn,String ln, String password, String email,String phone) {
    //     this.userId = userId;
	// 	this.firstName = fn;
    //     this.lastName = ln;
	// 	this.password = password;
    //     this.email = email;
    //     this.phone = phone;
	// }

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getTechId(){
		return techId;
	}
	public void setTechId(String techId) {
		this.techId = techId;
	}

    public String getStreet() {
		return street;
	}
    public void setStreet(String street) {
		this.street = street;
	}

    public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
    
	public LocalDate getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(LocalDate date) {
		this.orderDate = date;
	}

	public LocalDate getScheduledDate() {
		return scheduledDate;
	}
	public void setScheduledDate(LocalDate date) {
		this.scheduledDate = date;
	}

    public LocalTime getTime() {
		return time;
	}
	public void setTime(LocalTime time) {
		this.time = time;
	}

    public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
