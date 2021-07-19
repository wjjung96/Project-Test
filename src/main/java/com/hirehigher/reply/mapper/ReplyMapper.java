package com.hirehigher.reply.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.hirehigher.command.WorkReplyVO;
import com.hirehigher.util.Criteria;

public interface ReplyMapper {

	public int regist(WorkReplyVO vo); //등록
	public ArrayList<WorkReplyVO> getList(@Param("bno") int bno, @Param("cri") Criteria cri);
	public int getTotal(int bno); //전체댓글 수

	public int update(WorkReplyVO vo); //수정

}
