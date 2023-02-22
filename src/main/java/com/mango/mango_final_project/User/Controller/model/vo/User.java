package com.mango.mango_final_project.User.Controller.model.vo;


public class User {
    
    private String user_uid;
    private String password;
    private String name;
    private String birth;
    private String gender;
    private String phone;
    private String authority;


	public String getUser_uid() {
		return this.user_uid;
	}

	public void setUser_uid(String user_uid) {
		this.user_uid = user_uid;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return this.birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAuthority() {
		return this.authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

    public User(){}

    public User(String user_uid, String password, String name, String birth, String gender, String phone, String authority){
        super();
        this.user_uid = user_uid;
        this.password = password;
        this.name = name;
        this.birth = birth;
        this.gender = gender;
        this.phone = phone;
        this.authority = authority;
    }


}
