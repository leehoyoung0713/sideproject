package com.meommi.app.placeReview.vo;

public class Criteria {
    private String star;
    private String order;
    private int photo;
    private String placeId;
    
    public Criteria() {;}
    

    public Criteria(String star, String order, int photo, String placeId) {
        super();
        this.star = star;
        this.order = order;
        this.photo = photo;
        this.placeId = placeId;
        ;}
    
    public Criteria(String star, String order, String placeId) {
        super();
        this.star = star;
        this.order = order;
        this.placeId = placeId;
        ;}

    public String getStar() {
        return star;
    }

    public void setStar(String star) {
        this.star = star;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }


    public int getPhoto() {
        return photo;
    }


    public void setPhoto(int photo) {
        this.photo = photo;
    }

    public String getPlaceId() {
        return placeId;
    }

    public void setPlaceId(String placeId) {
        this.placeId = placeId;
    }

   @Override
   public String toString() {
      return "Criteria [star=" + star + ", order=" + order + ", photo=" + photo + ", placeId=" + placeId + "]";
   }
   

}