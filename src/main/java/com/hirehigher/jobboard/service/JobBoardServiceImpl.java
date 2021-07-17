package com.hirehigher.jobboard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hirehigher.command.JobBoardVO;
import com.hirehigher.jobboard.mapper.JobBoardMapper;
import com.hirehigher.util.JobCriteria;

@Service("jobBoardService")
public class JobBoardServiceImpl implements JobBoardService {
	
	//----------------------------MAPPER 연결----------------------------
	@Autowired
	private JobBoardMapper jobBoardMapper;
	//----------------------------MAPPER 연결----------------------------

	//public int regist(JobBoardVO jvo); //등록
	//public int update(jobBoardVO jvo); //수정
	
	//총 게시글 수
	@Override
	public int getTotal(JobCriteria cri) {
		return jobBoardMapper.getTotal(cri);
	}
	
	//조회
	@Override 
	public ArrayList<JobBoardVO> getList(JobCriteria cri) {
		return jobBoardMapper.getList(cri);
	}
	
	//public JobBoardVO getDetail(int bno); //상세
	//public int delete(int bno); //삭제
	

}