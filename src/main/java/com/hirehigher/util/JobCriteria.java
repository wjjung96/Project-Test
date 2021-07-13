package com.hirehigher.util;

import lombok.Data;

@Data
public class JobCriteria {
	
	private int pageNum;
	private int amount;
	
	private String searchType;
	private String searchName;
	
	public JobCriteria() {
		this(1, 10);
	}
	
	public JobCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

}
