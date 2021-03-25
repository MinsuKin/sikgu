package lab.spring.sikgu.model;

public class CustomerVO {

	private String sikgu_id;
	private String customer_nickname;
	private String customer_image_path;
	private String customer_phone;
	private String customer_address;
	private double default_x1;
	private double default_y1;
	private double default_x2;
	private double default_y2;
	private double default_x3;
	private double default_y3;
	private String customer_gender;
	private int customer_age;
	private String customer_family_type;
	
	//constructor
	public CustomerVO() {}

	public CustomerVO(String sikgu_id, String customer_nickname) {
		this.sikgu_id = sikgu_id;
		this.customer_nickname = customer_nickname;
	}

	//getter
	public String getsikgu_id() {return sikgu_id;}
	public String getCustomer_nickname() {return customer_nickname;}
	public String getCustomer_image_path() {return customer_image_path;}
	public String getCustomer_phone() {return customer_phone;}
	public String getCustomer_address() {return customer_address;}
	public double getDefault_x1() {return default_x1;}
	public double getDefault_y1() {return default_y1;}
	public double getDefault_x2() {return default_x2;}
	public double getDefault_y2() {return default_y2;}
	public double getDefault_x3() {return default_x3;}
	public double getDefault_y3() {return default_y3;}
	public String getCustomer_gender() {return customer_gender;}
	public int getCustomer_age() {return customer_age;}
	public String getCustomer_family_type() {return customer_family_type;}
	
	//setter
	public void setsikgu_id(String sikgu_id) {this.sikgu_id = sikgu_id;}
	public void setCustomer_nickname(String customer_nickname) {this.customer_nickname = customer_nickname;}
	public void setCustomer_image_path(String customer_image_path) {this.customer_image_path = customer_image_path;}
	public void setCustomer_phone(String customer_phone) {this.customer_phone = customer_phone;}
	public void setCustomer_address(String customer_address) {this.customer_address = customer_address;}
	public void setDefault_x1(double default_x1) {this.default_x1 = default_x1;}
	public void setDefault_y1(double default_y1) {this.default_y1 = default_y1;}
	public void setDefault_x2(double default_x2) {this.default_x2 = default_x2;}
	public void setDefault_y2(double default_y2) {this.default_y2 = default_y2;}
	public void setDefault_x3(double default_x3) {this.default_x3 = default_x3;}
	public void setDefault_y3(double default_y3) {this.default_y3 = default_y3;}
	public void setCustomer_gender(String customer_gender) {this.customer_gender = customer_gender;}
	public void setCustomer_age(int customer_age) {this.customer_age = customer_age;}
	public void setCustomer_family_type(String customer_family_type) {this.customer_family_type = customer_family_type;}
}
