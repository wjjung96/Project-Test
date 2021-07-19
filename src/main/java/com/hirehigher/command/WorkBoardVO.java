package com.hirehigher.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WorkBoardVO {
//
//	CREATE TABLE WORKBOARD(
//		    bno NUMBER(10) PRIMARY KEY, --글 번호
//		    userName varchar2(50) NOT NULL, --작성자
//		    title varchar2(200) NOT NULL, --제목
//		    content varchar2(2000) NOT NULL, --내용
//		    regDate date default sysdate, --작성일
//		    updateDate date default sysdate --수정일
//		);
	private int bno;
	private String userName;
	private String title;
	private String content;
	private Timestamp regDate;
	private Timestamp updateDate;
}
