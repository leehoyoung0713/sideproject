package com.meommi.app.placeReview.vo;

public class PlaceReviewDTO {
	private int placeReviewNumber;
	private String placeReviewContents;
	private int placeReviewRating;
	private String placeReviewDateTime;
	private int userNumber;
	private String userName;
	private String placeId;
	private String reviewFilePath;
	private String favoritePlaceName;
	private int placeReviewHelful;
	private int reviewFileNumber;
	private String reviewFileSystemName;
	private String reviewFileOriginName;
	private String userFileSystemName;
	private boolean isHelp;
	private String placeName;
	private String placeAddress;
	
	
	
	public PlaceReviewDTO() {;}

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

	public String getPlaceReviewDateTime() {
		return placeReviewDateTime;
	}

	public void setPlaceReviewDateTime(String placeReviewDateTime) {
		this.placeReviewDateTime = placeReviewDateTime;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPlaceId() {
		return placeId;
	}

	public void setPlaceId(String placeId) {
		this.placeId = placeId;
	}

	public String getFavoritePlaceName() {
		return favoritePlaceName;
	}

	public void setFavoritePlaceName(String favoritePlaceName) {
		this.favoritePlaceName = favoritePlaceName;
	}

	public int getPlaceReviewHelful() {
		return placeReviewHelful;
	}

	public void setPlaceReviewHelful(int placeReviewHelful) {
		this.placeReviewHelful = placeReviewHelful;
	}

	public int getReviewFileNumber() {
		return reviewFileNumber;
	}

	public void setReviewFileNumber(int reviewFileNumber) {
		this.reviewFileNumber = reviewFileNumber;
	}

	public String getReviewFileSystemName() {
		return reviewFileSystemName;
	}

	public void setReviewFileSystemName(String reviewFileSystemName) {
		this.reviewFileSystemName = reviewFileSystemName;
	}

	public String getReviewFileOriginName() {
		return reviewFileOriginName;
	}

	public void setReviewFileOriginName(String reviewFileOriginName) {
		this.reviewFileOriginName = reviewFileOriginName;
	}

	public String getReviewFilePath() {
		return reviewFilePath;
	}

	public void setReviewFilePath(String reviewFilePath) {
		this.reviewFilePath = reviewFilePath;
	}
	
	public String getUserFileSystemName() {
		return userFileSystemName;
	}

	public void setUserFileSystemName(String userFileSystemName) {
		this.userFileSystemName = userFileSystemName;
	}

	public boolean isHelp() {
		return isHelp;
	}

	public void setHelp(boolean isHelp) {
		this.isHelp = isHelp;
	}

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getPlaceAddress() {
		return placeAddress;
	}

	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}

	@Override
	public String toString() {
		return "PlaceReviewDTO [placeReviewNumber=" + placeReviewNumber + ", placeReviewContents=" + placeReviewContents
				+ ", placeReviewRating=" + placeReviewRating + ", placeReviewDateTime=" + placeReviewDateTime
				+ ", userNumber=" + userNumber + ", userName=" + userName + ", placeId=" + placeId + ", reviewFilePath="
				+ reviewFilePath + ", favoritePlaceName=" + favoritePlaceName + ", placeReviewHelful="
				+ placeReviewHelful + ", reviewFileNumber=" + reviewFileNumber + ", reviewFileSystemName="
				+ reviewFileSystemName + ", reviewFileOriginName=" + reviewFileOriginName + ", userFileSystemName="
				+ userFileSystemName + ", isHelp=" + isHelp + ", placeName=" + placeName + ", placeAddress="
				+ placeAddress + "]";
	}
}
