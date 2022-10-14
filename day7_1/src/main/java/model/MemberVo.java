package model;

public class MemberVo {
	private String name;
	private String userid;
	private String pwd;
	private String email;
	private String phone;
	private int admin;
	
	public MemberVo(String name, String userid, String pwd, String email, String phone, int admin) {
		
		this.name = name;
		this.userid = userid;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
		this.admin = admin;
	}
	
	//로그인 정보 받아서 값 초기화하는 생성자 정의
	public MemberVo(String userid, String pwd) {
		this.userid = userid;
		this.pwd = pwd;
	}
	
	//getter setter 만들기
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}
	@Override
	public String toString() {
		return "MemberVo [name=" + name + ", userid=" + userid + ", pwd=" + pwd + ", email=" + email + ", phone="
				+ phone + ", admin=" + admin + "]";
	}
	
	
	

}
