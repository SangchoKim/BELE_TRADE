package com.javac.bele.web.common;


public class Paging {

	public int Maxpost;
	public int firstPageNo;
	public int prevPageNo;
	public int startPageNo;
	public int currentPageNo;
	public int sizeOfPage;
	public int endPageNo;
	public int nextPageNo;
	public int finalPageNo;
	public int numberOfRecords;
	

	public Paging(int currentPageNo, int maxPost) {
		this.currentPageNo = currentPageNo;
		this.sizeOfPage = 5;
		this.Maxpost = (maxPost != 0) ? maxPost : 10;
	}

	public int getMaxpost() {
		return Maxpost;
	}

	public void setMaxpost(int maxpost) {
		Maxpost = maxpost;
	}

	public int getFirstPageNo() {
		return firstPageNo;
	}

	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}

	public int getPrevPageNo() {
		return prevPageNo;
	}

	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}

	public int getStartPageNo() {
		return startPageNo;
	}

	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}

	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	public int getSizeOfPage() {
		return sizeOfPage;
	}

	public void setSizeOfPage(int sizeOfPage) {
		this.sizeOfPage = sizeOfPage;
	}

	public int getEndPageNO() {
		return endPageNo;
	}

	public void setEndPageNO(int endPageNo) {
		this.endPageNo = endPageNo;
	}

	public int getNextPageNo() {
		return nextPageNo;
	}

	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}

	public int getFinalPage() {
		return finalPageNo;
	}

	public void setFinalPage(int finalPage) {
		this.finalPageNo = finalPage;
	}

	public int getNumberOfRecords() {
		return numberOfRecords;
	}

	public void setNumberOfRecords(int numberOfRecords) {
		this.numberOfRecords = numberOfRecords;
	}


	public void makePaging() {
		if(numberOfRecords == 0)
			return;
		
		if(currentPageNo == 0) 
		setCurrentPageNo(1);
		
		if(Maxpost == 0)
			setMaxpost(10);
		
		int finalPage = (numberOfRecords + (Maxpost -1))/Maxpost;
		
		if(currentPageNo > finalPage)
			setCurrentPageNo(finalPage);
		
		if(currentPageNo < 0)
			currentPageNo = 1; 
		
		boolean isNowFirst = currentPageNo == 1 ? true : false;
		boolean isNowFinal = currentPageNo == finalPage ? true : false;
		
		int startPage = ((currentPageNo -1) / sizeOfPage) * sizeOfPage +1;
		int endPage = startPage + sizeOfPage -1;
		
		if(endPage > finalPage)
			endPage = finalPage;
		
		setFirstPageNo(1);
		
		if(!isNowFirst)
			setPrevPageNo(((startPage - 1) < 1  ? 1 : (startPage -1)));
		
		setStartPageNo(startPage);
		setEndPageNO(endPage);
		
		if(isNowFinal)
			setNextPageNo(((endPage+1 > finalPage ? finalPage : (endPage +1))));
		
		setFirstPageNo(finalPage);
		
		
		
	}
}