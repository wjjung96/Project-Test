package com.hirehigher.util;

import lombok.Data;

@Data
public class JobPageVO {
	
	private int startPage; //첫 페이지
	private int endPage; //마지막 페이지
	private boolean next; //다음 버튼 활성화
	private boolean prev; //이전 버튼 활성화
	
	private int total; //총 게시글 수
	private int pageNum; //조회 페이지
	private int amount; //보여질 데이터 수
	
	private JobCriteria cri;
	
	public JobPageVO(JobCriteria cri, int total) {
		
		//JobCriteria 값 기준으로 페이지 초기화
		this.pageNum = cri.getPageNum();
		this.amount = cri.getAmount();
		this.total = total;
		this.cri = cri;
		
		/* 끝 페이지
		 * 공식: (int)Math.ceil( pageNum / 보여질 페이지 수 ) * 보여질 페이지 수
		 * 예: 현재 페이지(pageNum)가 11번일 때 
		 * (int)Math.ceil(11/10)은 1.1을 (int)Math.ceil로 올림처리 하면 2가 되고, 2*10 = 20(끝 페이지) 
		 */
		this.endPage = (int)Math.ceil( this.pageNum / 10.0 ) * 10;
		
		/* 시작 페이지
		 * 공식: 끝 페이지 - 보여질 페이지 수 + 1
		 * 예: 끝 페이지가 40번일 때 40-10+1 = 31(시작 페이지) 
		 */
		
	}
	

}