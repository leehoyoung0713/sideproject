package com.koreait.app.member.vo;

public class MemberVO {
   private int memberNumber;
   private String memberId;
   private String memberPw;
   private String memberName;
   private int memberAge;
   private String memberGender;
   private String memberEmail;
   private String memberZipcode;
   private String memberAddress;
   private String memberAddressDetail;
   
   public MemberVO() {;}

   public int getMemberNumber() {
      return memberNumber;
   }

   public void setMemberNumber(int memberNumber) {
      this.memberNumber = memberNumber;
   }

   public String getMemberId() {
      return memberId;
   }

   public void setMemberId(String memberId) {
      this.memberId = memberId;
   }

   public String getMemberPw() {
      return memberPw;
   }

   public void setMemberPw(String memberPw) {
      this.memberPw = memberPw;
   }

   public String getMemberName() {
      return memberName;
   }

   public void setMemberName(String memberName) {
      this.memberName = memberName;
   }

   public int getMemberAge() {
      return memberAge;
   }

   public void setMemberAge(int memberAge) {
      this.memberAge = memberAge;
   }

   public String getMemberGender() {
      return memberGender;
   }

   public void setMemberGender(String memberGender) {
      this.memberGender = memberGender;
   }

   public String getMemberEmail() {
      return memberEmail;
   }

   public void setMemberEmail(String memberEmail) {
      this.memberEmail = memberEmail;
   }

   public String getMemberZipcode() {
      return memberZipcode;
   }

   public void setMemberZipcode(String memberZipcode) {
      this.memberZipcode = memberZipcode;
   }

   public String getMemberAddress() {
      return memberAddress;
   }

   public void setMemberAddress(String memberAddress) {
      this.memberAddress = memberAddress;
   }

   public String getMemberAddressDetail() {
      return memberAddressDetail;
   }

   public void setMemberAddressDetail(String memberAddressDetail) {
      this.memberAddressDetail = memberAddressDetail;
   }

   @Override
   public String toString() {
      return "MemberVO [memberNumber=" + memberNumber + ", memberId=" + memberId + ", memberPw=" + memberPw
            + ", memberName=" + memberName + ", memberAge=" + memberAge + ", memberGender=" + memberGender
            + ", memberEmail=" + memberEmail + ", memberZipcode=" + memberZipcode + ", memberAddress="
            + memberAddress + ", memberAddressDetail=" + memberAddressDetail + "]";
   }
}