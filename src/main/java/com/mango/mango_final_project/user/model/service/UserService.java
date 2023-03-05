package com.mango.mango_final_project.user.model.service;

import com.mango.mango_final_project.user.model.vo.User;

public interface UserService {
    
    // 로그인 서비스 (select)

    User loginUser(User user);

    // 회원가입 서비스 (insert)
    int insertUser(User user);

    // 정보수정 서비스 (update)
    int updateUser(User user);

    // 회원 탈퇴 서비스 (delete)
    int deleteUser(String user_uid);

    // 아이디 중복체크 서비스 (select)
    int idCheck(String checkId);
    
    // 아이디 찾기 서비스 (select)
    User findIdCheck(User user);

    // 비밀번호 찾기 서비스 (select)
    User findUserPwd(User user);

     // 비밀번호 변경 서비스 (update)
     int changePwd(User user);

}