package lab.spring.sikgu.model;

import java.util.Date;

public class StoreVO {

	private String sikgu_id;
	private int category_id ;
	private int store_biz_number;
	private String store_name;
	private String store_phone;
	private String store_address;
	private String store_sido;
	private String store_sigungu;
	private String store_dong;
	private String store_street;
	private double store_x;
	private double store_y;
	private String store_profile;
	private String store_web_url;
	private String store_sns_url;
	private Date store_opendate;
	private Date store_updatedate;
	private int store_view_count;
	private int store_doc_count;
	private int store_follower_count;
	private String store_main_video;
	private String store_video_path;
	private String store_op_time;

	//constructor
	public StoreVO() {}
	
	public StoreVO(String store_name, String store_sigungu, String store_dong, double store_x, double store_y) {
		this.store_name = store_name;
		this.store_sigungu = store_sigungu;
		this.store_dong = store_dong;
		this.store_x = store_x;
		this.store_y = store_y;
	}
	
	public StoreVO(String sikgu_id, int category_id, int store_biz_number, String store_name, String store_phone,
			String store_address, String store_sido, String store_sigungu, String store_dong, double store_x,
			double store_y, String store_profile, String store_web_url, String store_sns_url, String store_op_time) {
		this.sikgu_id = sikgu_id;
		this.category_id = category_id;
		this.store_biz_number = store_biz_number;
		this.store_name = store_name;
		this.store_phone = store_phone;
		this.store_address = store_address;
		this.store_sido = store_sido;
		this.store_sigungu = store_sigungu;
		this.store_dong = store_dong;
		this.store_x = store_x;
		this.store_y = store_y;
		this.store_profile = store_profile;
		this.store_web_url = store_web_url;
		this.store_sns_url = store_sns_url;
		this.store_op_time = store_op_time;
	}

	public StoreVO(String sikgu_id, int category_id, int store_biz_number, String store_name, String store_phone,
			String store_address, String store_sido, String store_sigungu, String store_dong, String store_street,
			double store_x, double store_y, Date store_opendate, String store_op_time) {
		this.sikgu_id = sikgu_id;
		this.category_id = category_id;
		this.store_biz_number = store_biz_number;
		this.store_name = store_name;
		this.store_phone = store_phone;
		this.store_address = store_address;
		this.store_sido = store_sido;
		this.store_sigungu = store_sigungu;
		this.store_dong = store_dong;
		this.store_street = store_street;
		this.store_x = store_x;
		this.store_y = store_y;
		this.store_opendate = store_opendate;
		this.store_op_time = store_op_time;
	}
	
	//getter
	public String getSikgu_id() {return sikgu_id;}
	public int getCategory_id() {return category_id;}
	public int getStore_biz_number() {return store_biz_number;}
	public String getStore_name() {return store_name;}
	public String getStore_phone() {return store_phone;}
	public String getStore_address() {return store_address;}
	public String getStore_sido() {return store_sido;}
	public String getStore_sigungu() {return store_sigungu;}
	public String getStore_dong() {return store_dong;}
	public String getStore_street() {return store_street;}
	public double getStore_x() {return store_x;}
	public double getStore_y() {return store_y;}
	public String getStore_profile() {return store_profile;}
	public String getStore_web_url() {return store_web_url;}
	public String getStore_sns_url() {return store_sns_url;}
	public Date getStore_opendate() {return store_opendate;}
	public Date getStore_updatedate() {return store_updatedate;}
	public int getStore_view_count() {return store_view_count;}
	public int getStore_doc_count() {return store_doc_count;}
	public int getStore_follower_count() {return store_follower_count;}
	public String getStore_main_video() {return store_main_video;}
	public String getStore_video_path() {return store_video_path;}
	public String getStore_op_time() {return store_op_time;}

	//setter
	public void setSikgu_id(String sikgu_id) {this.sikgu_id = sikgu_id;}
	public void setCategory_id(int category_id) {this.category_id = category_id;}
	public void setStore_biz_number(int store_biz_number) {this.store_biz_number = store_biz_number;}
	public void setStore_name(String store_name) {this.store_name = store_name;}
	public void setStore_phone(String store_phone) {this.store_phone = store_phone;}
	public void setStore_address(String store_address) {this.store_address = store_address;}
	public void setStore_sido(String store_sido) {this.store_sido = store_sido;}
	public void setStore_sigungu(String store_sigungu) {this.store_sigungu = store_sigungu;}
	public void setStore_dong(String store_dong) {this.store_dong = store_dong;}
	public void setStore_street(String store_street) {this.store_street = store_street;}
	public void setStore_x(double store_x) {this.store_x = store_x;}
	public void setStore_y(double store_y) {this.store_y = store_y;}
	public void setStore_profile(String store_profile) {this.store_profile = store_profile;}
	public void setStore_web_url(String store_web_url) {this.store_web_url = store_web_url;}
	public void setStore_sns_url(String store_sns_url) {this.store_sns_url = store_sns_url;}
	public void setStore_opendate(Date store_opendate) {this.store_opendate = store_opendate;}
	public void setStore_updatedate(Date store_updatedate) {this.store_updatedate = store_updatedate;}
	public void setStore_view_count(int store_view_count) {this.store_view_count = store_view_count;}
	public void setStore_doc_count(int store_doc_count) {this.store_doc_count = store_doc_count;}
	public void setStore_follower_count(int store_follower_count) {this.store_follower_count = store_follower_count;}
	public void setStore_main_video(String store_main_video) {this.store_main_video = store_main_video;}
	public void setStore_video_path(String store_video_path) {this.store_video_path = store_video_path;}
	public void setStore_op_time(String store_op_time) {this.store_op_time = store_op_time;}
}
