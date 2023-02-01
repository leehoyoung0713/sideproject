package com.meommi.app.main.vo;

public class MainVO {
	int placeReviewNumber;
	String placeReviewContents;
	String placeReviewRating;
	String placeReviewDatetime;
	int usernumber;
	String userName;
	String placeID;
	int placeReviewHelful;
	
	public MainVO() {;}

	public int getPlaceReviewNumber() {
		return placeReviewNumber;
	}

	public void setPlaceReviewNumber(int placeReviewNumber) {
		this.placeReviewNumber = placeReviewNumber;
	}

	public String getPlaceReviewContents() {
		return placeReviewContents;
	}

	public void setPlaceReviewContents(String placeReviewContents) {
		this.placeReviewContents = placeReviewContents;
	}

	public String getPlaceReviewRating() {
		return placeReviewRating;
	}

	public void setPlaceReviewRating(String placeReviewRating) {
		this.placeReviewRating = placeReviewRating;
	}

	public String getPlaceReviewDatetime() {
		return placeReviewDatetime;
	}

	public void setPlaceReviewDatetime(String placeReviewDatetime) {
		this.placeReviewDatetime = placeReviewDatetime;
	}

	public int getUsernumber() {
		return usernumber;
	}

	public void setUsernumber(int usernumber) {
		this.usernumber = usernumber;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPlaceID() {
		return placeID;
	}

	public void setPlaceID(String placeID) {
		this.placeID = placeID;
	}

	public int getPlaceReviewHelful() {
		return placeReviewHelful;
	}

	public void setPlaceReviewHelful(int placeReviewHelful) {
		this.placeReviewHelful = placeReviewHelful;
	}

	@Override
	public String toString() {
		return "MainVO [placeReviewNumber=" + placeReviewNumber + ", placeReviewContents=" + placeReviewContents
				+ ", placeReviewRating=" + placeReviewRating + ", placeReviewDatetime=" + placeReviewDatetime
				+ ", usernumber=" + usernumber + ", userName=" + userName + ", placeID=" + placeID
				+ ", placeReviewHelful=" + placeReviewHelful + "]";
	}
	
	
	
	
	
	
	
	
	
}
