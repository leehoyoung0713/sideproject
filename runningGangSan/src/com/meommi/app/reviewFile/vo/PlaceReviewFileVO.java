package com.meommi.app.reviewFile.vo;

public class PlaceReviewFileVO {

   private int reviewFileNumber;
   private String reviewFileSystemName;
   private String reviewFileOriginName;
   private int placeReviewNumber;
   
   
   
   public PlaceReviewFileVO() {;}
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

   public int getPlaceReviewNumber() {
      return placeReviewNumber;
   }
   public void setPlaceReviewNumber(int placeReviewNumber) {
      this.placeReviewNumber = placeReviewNumber;
   }
   
   @Override
   public String toString() {
      return "ReviewFileVO [reviewFileNumber=" + reviewFileNumber + ", reviewFileSystemName=" + reviewFileSystemName
            + ", reviewFileOriginName=" + reviewFileOriginName + ", reviewFilePath=" + ", placeReviewNumber=" + placeReviewNumber + "]";
   }
}
   
   
   