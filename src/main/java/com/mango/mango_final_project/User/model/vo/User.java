package com.mango.mango_final_project.user.model.vo;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper=false)
public class User {
    
    private String user_uid;
    private String password;
    private String name;
    private String birth;
    private String gender;
    private String phone;
    private String phone1;
    private String phone2;
    private String phone3;
    private String authority;
    private String post;
    private String address;
    private String addressDetail;

}
