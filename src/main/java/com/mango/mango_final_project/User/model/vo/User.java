package com.mango.mango_final_project.user.model.vo;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper=false)
public class User {
    
    private String user_uid;
    private String password;
    private String password1;
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
    
    private String number;
    private String review_uid;
    private String review_title;
    private String review_scope;
    private String review_date;
    private String review_content;
    private String wine_uid;
    private String wine_name;

}
