package lab.spring.sikgu.model;

public class ReviewVO {

	private String review_id;
	private String store_id;
	private String writer_id;
	private String review_description;
	private String review_url;
	private String review_type;
	private long review_size;
	private String review_title;
	private String review_create_date;
	
	
	//constructor
	public ReviewVO() {};
	public ReviewVO(String store_id, String writer_id, String review_description, String review_url,
	         String review_type, long review_size, String review_title) {
	      this.store_id = store_id;
	      this.writer_id = writer_id;
	      this.review_description = review_description;
	      this.review_url = review_url;
	      this.review_type = review_type;
	      this.review_size = review_size;
	      this.review_title = review_title;
	}

	//getter, setter
	public String getReview_id() {return review_id;}
	public void setReview_id(String review_id) {this.review_id = review_id;}
	public String getStore_id() {return store_id;}
	public void setStore_id(String store_id) {this.store_id = store_id;}
	public String getWriter_id() {return writer_id;}
	public void setWriter_id(String writer_id) {this.writer_id = writer_id;}
	public String getReview_description() {return review_description;}
	public void setReview_description(String review_description) {this.review_description = review_description;}
	public String getReview_url() {return review_url;}
	public void setReview_url(String review_url) {this.review_url = review_url;}
	public String getReview_type() {return review_type;}
	public void setReview_type(String review_type) {this.review_type = review_type;}
	public long getReview_size() {return review_size;}
	public void setReview_size(long review_size) {this.review_size = review_size;}
	public String getReview_title() {return review_title;}
	public void setReview_title(String review_title) {this.review_title = review_title;}
	public String getReview_create_date() {return review_create_date;}
	public void setReview_create_date(String review_create_date) {this.review_create_date = review_create_date;};
	
	
	
	
}
