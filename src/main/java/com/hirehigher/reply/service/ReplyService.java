package com.hirehigher.reply.service;

import java.util.ArrayList;

import com.hirehigher.command.WorkReplyVO;
import com.hirehigher.util.Criteria;

public interface ReplyService {

	public int regist(WorkReplyVO vo); //등록
//	public ArrayList<FreeReplyVO> getList(int bno);
	public ArrayList<WorkReplyVO> getList(int bno, Criteria cri);
	public int getTotal(int bno); //전체댓글 수
	
	
	public int update(WorkReplyVO vo); //수정
}
