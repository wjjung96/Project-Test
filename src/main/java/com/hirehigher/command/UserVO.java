package com.hirehigher.command;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {
	
	private String userId;
	private String userPw;
	private String userName;
	private String nickName;
	private String birthDay;
	private String userEmail;
	private String userCellNum;
	private String addrZipNum;
	private String addrBasic;
	private String addDetail;
	private Timestamp regdate;
	private int userType;
}
