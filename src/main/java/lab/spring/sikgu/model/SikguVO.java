package lab.spring.sikgu.model;

// 로그인용 VO (간편로그인 -> verification_code + 생성)

public class SikguVO {

	private String sikgu_id;
	private String sikgu_pwd;
	private String sikgu_verification_code;
	private String sikgu_type;
	
	//constructor

	public SikguVO() {}
	public SikguVO(String sikgu_id, String sikgu_pwd, String sikgu_type) {
		this.sikgu_id = sikgu_id;
		this.sikgu_pwd = sikgu_pwd;
		this.sikgu_type = sikgu_type;
	}
	public SikguVO(String sikgu_id, String sikgu_pwd, String sikgu_verification_code, String sikgu_type) {
		this(sikgu_id,sikgu_pwd,sikgu_type);
		this.sikgu_verification_code = sikgu_verification_code;
	}

	//getter
	public String getSikgu_id() {return sikgu_id;}
	public String getSikgu_pwd() {return sikgu_pwd;}
	public String getSikgu_verification_code() {return sikgu_verification_code;}
	public String getSikgu_type() {return sikgu_type;}

	//setter
	public void setSikgu_id(String sikgu_id) {this.sikgu_id = sikgu_id;}
	public void setSikgu_pwd(String sikgu_pwd) {this.sikgu_pwd = sikgu_pwd;}
	public void setSikgu_verification_code(String sikgu_verification_code) {this.sikgu_verification_code = sikgu_verification_code;}
	public void setSikgu_type(String sikgu_type) {this.sikgu_type = sikgu_type;}
}
