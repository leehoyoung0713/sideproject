package com.meommi.app.placeReview.vo;

public class PlaceReviewVO {

	private int placeReviewNumber;
	private String placeReviewContents;
	private int placeReviewRating;
	private int placeReviewDateTime;
	private int userNumber;
	private String placeId;
	private int placeReviewHelful;
	
	public PlaceReviewVO() {;}

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

	public int getPlaceReviewRating() {
		return placeReviewRating;
	}

	public void setPlaceReviewRating(int placeReviewRating) {
		this.placeReviewRating = placeReviewRating;
	}

	public int getPlaceReviewDateTime() {
		return placeReviewDateTime;
	}

	public void setPlaceReviewDateTime(int placeReviewDateTime) {
		this.placeReviewDateTime = placeReviewDateTime;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	public String getPlaceId() {
		return placeId;
	}

	public void setPlaceId(String placeId) {
		this.placeId = placeId;
	}

	public int getPlaceReviewHelful() {
		return placeReviewHelful;
	}

	public void setPlaceReviewHelful(int placeReviewHelful) {
		this.placeReviewHelful = placeReviewHelful;
	}

	@Override
	public String toString() {
		return "PlaceReviewVO [placeReviewNumber=" + placeReviewNumber + ", placeReviewContents=" + placeReviewContents
				+ ", placeReviewRating=" + placeReviewRating + ", placeReviewDateTime=" + placeReviewDateTime
				+ ", userNumber=" + userNumber + ", placeId=" + placeId + ", placeReviewHelful=" + placeReviewHelful
				+ "]";
	}

	
	
}
