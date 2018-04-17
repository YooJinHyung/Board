package com.jh.domain;

public class Criteria {
	
	private int page;
	private int perPageNum;
	
	public Criteria(){
		this.page=1;
		this.perPageNum =10;
	}
	
	public void setPage(int page){
		if(page<=0){
			this.page=1;
			return;
		}
		
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum){
		if(perPageNum<=0 || perPageNum >100){
			this.page = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getpage(){
		return page;
	}
	
	public int getPageStart(){
		return (this.page-1) * perPageNum;
	}
	
	public int getPerPageNum(){
		return perPageNum;
	}
	
	@Override
	public String toString(){
		return "Criteria [page="+page+", "+"perPageNum="+perPageNum+"]";
	}
}
