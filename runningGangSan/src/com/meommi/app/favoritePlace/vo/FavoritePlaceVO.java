package com.meommi.app.favoritePlace.vo;

public class FavoritePlaceVO {
	private String favoritePlacePlaceId;
	private String favoritePlaceAdrAddress;
	private String favoritePlaceBusinessStatus;
	private String favoritePlaceGeometry;
	private String favoritePlaceName;
	private String favoritePlacePhotos;
	private String favoritePlaceOpening;
	
	public FavoritePlaceVO() {;}

	public String getFavoritePlacePlaceId() {
		return favoritePlacePlaceId;
	}

	public void setFavoritePlacePlaceId(String favoritePlacePlaceId) {
		this.favoritePlacePlaceId = favoritePlacePlaceId;
	}

	public String getFavoritePlaceAdrAddress() {
		return favoritePlaceAdrAddress;
	}

	public void setFavoritePlaceAdrAddress(String favoritePlaceAdrAddress) {
		this.favoritePlaceAdrAddress = favoritePlaceAdrAddress;
	}

	public String getFavoritePlaceBusinessStatus() {
		return favoritePlaceBusinessStatus;
	}

	public void setFavoritePlaceBusinessStatus(String favoritePlaceBusinessStatus) {
		this.favoritePlaceBusinessStatus = favoritePlaceBusinessStatus;
	}

	public String getFavoritePlaceGeometry() {
		return favoritePlaceGeometry;
	}

	public void setFavoritePlaceGeometry(String favoritePlaceGeometry) {
		this.favoritePlaceGeometry = favoritePlaceGeometry;
	}

	public String getFavoritePlaceName() {
		return favoritePlaceName;
	}

	public void setFavoritePlaceName(String favoritePlaceName) {
		this.favoritePlaceName = favoritePlaceName;
	}

	public String getFavoritePlacePhotos() {
		return favoritePlacePhotos;
	}

	public void setFavoritePlacePhotos(String favoritePlacePhotos) {
		this.favoritePlacePhotos = favoritePlacePhotos;
	}

	public String getFavoritePlaceOpening() {
		return favoritePlaceOpening;
	}

	public void setFavoritePlaceOpening(String favoritePlaceOpening) {
		this.favoritePlaceOpening = favoritePlaceOpening;
	}

	@Override
	public String toString() {
		return "FavoritePlaceVO [favoritePlacePlaceId=" + favoritePlacePlaceId + ", favoritePlaceAdrAddress="
				+ favoritePlaceAdrAddress + ", favoritePlaceBusinessStatus=" + favoritePlaceBusinessStatus
				+ ", favoritePlaceGeometry=" + favoritePlaceGeometry + ", favoritePlaceName=" + favoritePlaceName
				+ ", favoritePlacePhotos=" + favoritePlacePhotos + ", favoritePlaceOpening=" + favoritePlaceOpening
				+ "]";
	}


	
	
}
