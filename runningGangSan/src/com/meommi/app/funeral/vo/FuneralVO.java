package com.meommi.app.funeral.vo;

public class FuneralVO {

	private int funeralNumber;
	private String funeralName;
	private String funeralPhone;
	private String funeralAddress;
	private String funeralContent;
	private String funeralUrl;
	
	public FuneralVO() {;}

	public int getFuneralNumber() {
		return funeralNumber;
	}

	public void setFuneralNumber(int funeralNumber) {
		this.funeralNumber = funeralNumber;
	}

	public String getFuneralName() {
		return funeralName;
	}

	public void setFuneralName(String funeralName) {
		this.funeralName = funeralName;
	}

	public String getFuneralPhone() {
		return funeralPhone;
	}

	public void setFuneralPhone(String funeralPhone) {
		this.funeralPhone = funeralPhone;
	}

	public String getFuneralAddress() {
		return funeralAddress;
	}

	public void setFuneralAddress(String funeralAddress) {
		this.funeralAddress = funeralAddress;
	}

	public String getFuneralContent() {
		return funeralContent;
	}

	public void setFuneralContent(String funeralContent) {
		this.funeralContent = funeralContent;
	}

	public String getFuneralUrl() {
		return funeralUrl;
	}

	public void setFuneralUrl(String funeralUrl) {
		this.funeralUrl = funeralUrl;
		
	}
	

	@Override
	public String toString() {
		return "FuneralVO [funeralNumber=" + funeralNumber + ", funeralName=" + funeralName + ", funeralPhone="
				+ funeralPhone + ", funeralAddress=" + funeralAddress + ", funeralContent=" + funeralContent
				+ ", funeralUrl=" + funeralUrl + "]";
	}
	
}
