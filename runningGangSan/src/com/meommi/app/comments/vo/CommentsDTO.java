package com.meommi.app.comments.vo;

public class CommentsDTO {
   private int commentsNumber;
   private String commentsDatetime;
   private String commentsContent;
   private int userNumber;
   private int postNumber;
   private String userId;
   
    public CommentsDTO() {;}

   public int getCommentsNumber() {
      return commentsNumber;
   }

   public void setCommentsNumber(int commentsNumber) {
      this.commentsNumber = commentsNumber;
   }

   public String getCommentsDatetime() {
      return commentsDatetime;
   }

   public void setCommentsDatetime(String commentsDatetime) {
      this.commentsDatetime = commentsDatetime;
   }

   public String getCommentsContent() {
      return commentsContent;
   }

   public void setCommentsContent(String commentsContent) {
      this.commentsContent = commentsContent;
   }

   public int getUserNumber() {
      return userNumber;
   }

   public void setUserNumber(int userNumber) {
      this.userNumber = userNumber;
   }

   public int getPostNumber() {
      return postNumber;
   }

   public void setPostNumber(int postNumber) {
      this.postNumber = postNumber;
   }

   public String getUserId() {
      return userId;
   }

   public void setUserId(String userId) {
      this.userId = userId;
   }

   @Override
   public String toString() {
      return "CommentsDTO [commentsNumber=" + commentsNumber + ", commentsDatetime=" + commentsDatetime
            + ", commentsContent=" + commentsContent + ", userNumber=" + userNumber + ", postNumber=" + postNumber
            + ", userId=" + userId +  "]";
   }

}
