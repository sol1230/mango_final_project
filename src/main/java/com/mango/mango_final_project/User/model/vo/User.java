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
    /*
    private String USER_UID;
    private String PASSWORD;
    private String PASSWORD1;
    private String NAME;
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
*/

    private String USER_UID;
    private String PASSWORD;
    private String PASSWORD1;
    private String NAME;
    private String BIRTH;
    private String GENDER;
    private String PHONE;
    private String PHONE1;
    private String PHONE2;
    private String PHONE3;
    private String AUTHORITY;
    private String POST;
    private String ADDRESS;
    private String ADDRESSDETAIL;
    
    private String NUMBER;
    private String REVIEW_UID;
    private String REVIEW_TITLE;
    private String REVIEW_SCOPE;
    private String REVIEW_DATE;
    private String REVIEW_CONTENT;
    private String WINE_UID;
    private String WINE_NAME;
    private String WINE_NAME_EN;
    private String WINE_SCOPE;
    private String WINE_COMPANY;
    private String WINE_VIRIETY;
    private String WINE_COUNTRY;
    private String WINE_REGION;
    private String WINE_TYPE;
    private String WINE_ALCOHOL_DEGREE;
    private String WINE_PRICE;
    private String WINE_IMAGE;
    private String WINE_FILE;
    private String WINE_BODY;
    private String WINE_ACIDTY;
    private String WINE_SUGAR;
    private String WINE_TANNIN;
    private String WINE_FOOD_PAIRING;

    private String QNA_UID;
    private String QNA_TITLE;
    private String QNA_CONTENT;
    private String QNA_DATE;
    private String QNA_ANSWER;
    private String QNA_ANSWER_DATE;
    private String ANSWER_STATUS;

    private String REVIEWCOUNT;
    private String QNACOUNT;

}
