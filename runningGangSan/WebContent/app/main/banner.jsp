<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Swiper demo</title>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"
    />
    <!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />

    <!-- Demo styles -->
    <style>
  

      body {
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }
      .swiper-horizontal>.swiper-pagination-progressbar, .swiper-pagination-progressbar.swiper-pagination-horizontal{
        width: 376px;
	    height: 4px;
	    left: 80px;
	    top: 238px;
		}
      
      .swiper {
        width: 100%;
        height: 100%;
      }
		.mySwiper{
		position: relative;
        height: 262.8px;
        }
      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img{
        display: block;
        width: 100%;
        height: 100%;
        object-fit: contain;
      }
      :root {
        --swiper-theme-color: white;
      }
      .swiper-button-next:after, .swiper-rtl .swiper-button-prev:after {
        right: 0;
         content: 'next';
         color: #9d9d9d;
         font-size:16px;
         font-weight: bold;
        }

        .swiper-button-prev:after, .swiper-rtl .swiper-button-next:after {
         content: 'prev';
         color: #9d9d9d;
         font-size:16px;
         font-weight: bold;
        }
        
            .swiper-button{
                display: inline-block;
                text-align: center;
                position: relative;
                top: 9px;
            }


        .swiper-button-wrapper{
            height: 40px;
            width: 40px;
            background-color: #00000066;
            position: relative;
            display: inline;
            z-index: 1;
            float: right;
            top: -74px;
  			right: 137px;
        }

        .swiper-button-next{
            left: 7px;
        }

        .swiper-button-prev{
            left: 8px;
        }
    </style>
  </head>

  <body>
    <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide"><a href="${pageContext.request.contextPath}/app/community/community.jsp"><img src="${pageContext.request.contextPath}/images/001.png" alt=""></div>
        <div class="swiper-slide"><a href="${pageContext.request.contextPath}/map/mapOriginal.pl"><img src="${pageContext.request.contextPath}/images/002.png" alt=""></div>
        <div class="swiper-slide"><a href="${pageContext.request.contextPath}/app/service/animalfeed.jsp"><img src="${pageContext.request.contextPath}/images/003.png" alt=""></div>
        <div class="swiper-slide"><a href="${pageContext.request.contextPath}/app/service/lostfoundanimal.jsp"><img src="${pageContext.request.contextPath}/images/004.png" alt=""></div>
        <div class="swiper-slide"><a href="${pageContext.request.contextPath}/funeral.fu"><img src="${pageContext.request.contextPath}/images/005.png" alt=""></div>
        <div class="swiper-slide"><a href="${pageContext.request.contextPath}/main.ma"><img src="${pageContext.request.contextPath}/images/006.png" alt=""></div>
      </div>
      <div class="swiper-button-wrapper-prev swiper-button-wrapper" style="background-color: #00000066;">
        <div class="swiper-button-next swiper-button"></div>
    </div>
    <div class="swiper-button-wrapper-next swiper-button-wrapper" style="background-color: #00000066;">
        <div class="swiper-button-prev swiper-button"></div>
      </div>


      <div class="swiper-pagination"></div>
    </div>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
       var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination",
          type: "progressbar",
        }, 
        rewind:true,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>
  </body>
</html>
