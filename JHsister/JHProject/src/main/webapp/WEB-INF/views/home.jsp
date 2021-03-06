<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="rootPath" 
	value="${pageContext.request.contextPath}" />

<link rel="stylesheet" href=<c:url value="/css/main.css" /> >
		
		
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Do with Dog + 두윋독</title>
    <meta name="description" content="This is a basic starter template for MMPilot which includes Bootstrap Framework."/>
    <link href="https://fonts.googleapis.com/css?family=Shadows+Into+Light" rel="stylesheet">
    <link href="styles/main.css" rel="stylesheet">
  </head>
  <body id="top">
    <header class="tf-header">
      <nav class="navbar py-5 navbar-dark">
        <div class="container">
          <h1><a class="navbar-brand" href="/"></a></h1>
          <div id="navbar">
            <ul class="nav pull-right">
              <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
              <li class="nav-item"><a class="nav-link" href="#work">Trip</a></li>
              <li class="nav-item"><a class="nav-link" href="#contact">Community</a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="container">
        <div class="row">
          <div class="col-md-7 col-sm-12">
            <h2>함께가자! 댕댕이와! <br><br></h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-7 col-sm-12">
            <p class="mt-4"></p>
            <p class="mt-5"><strong class="text-uppercase">더 많은 정보를 원하신다면 구독해주세요:)</strong><span></span></p>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-md-4 col-sm-12 tf-hh-col">
            <input class="mt-1 form-control" type="email" placeholder="*Your Email Address">
          </div>
          <div class="col-md-3 col-sm-12"><a class="tf-header-heading-btn a btn btn-primary btn-block mt-1" href="#">Request Free Trial</a></div>
        </div>
      </div>
    </header>
    <div class="page-content">
      <div>
<div class="tf-work-section">
  <div class="container" id="work">
    <h2 class="h3" style="text-align:center"><span class="w3-large w3-border-palegreen w3-bottombar">Check Details</span></h2>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-12 pt-2">
        <div class="card"><img class="img-fluid card-img-top" src="images/main_place.jpg" alt="main_place"/>
          <div class="card-body">
            <p class="text-muted" style="text-align:center">WHERE TO GO</p><a class="text-dark card-link" style="text-align:center" href="<c:url value="/place1" />">
              	어디로 떠나야 할 지 고민하는 당신을 위한 빅데이터</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-12 pt-2">
        <div class="card"><img class="img-fluid card-img-top" src="images/main_info.jpg" alt="main_info"/>
          <div class="card-body">
            <p class="text-muted" style="text-align:center">WHAT TO BRING</p><a class="text-dark card-link" style="text-align:center" href="<c:url value="/shop" />">여행을 맨 몸으로 가나요? 인싸템 총정리</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-12 pt-2">
        <div class="card"><img class="img-fluid card-img-top" src="images/main_commu.jpg" alt="main_commu"/>
          <div class="card-body">
            <p class="text-muted" style="text-align:center">THINGS TO SHARE</p><a class="text-dark card-link" style="text-align:center" href="<c:url value="/community" />">무엇이든 물어보세요 !</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="tf-quotes-section">
  <div class="carousel slide mt-5" id="tf-carousel" data-ride="carousel">
    <ol class="carousel-indicators">
      <li class="active" data-target="#tf-carousel" data-slide-to="0"></li>
      <li data-target="#tf-carousel" data-slide-to="1"></li>
      <li data-target="#tf-carousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active" style="background-image: url('images/5-start-simple-slider.jpg');">
        <div class="carousel-caption">
          <p class="slider-text-1">"Amazing product, Start Simple cares for their customers and helps them at every step.<br>I am a satisfied customer!"</p>
          <p class="slider-text-2">Walter George<br>CEO, Founder of Gupply</p>
        </div>
      </div>
      <div class="carousel-item" style="background-image: url('images/6-start-simple-slider.jpg');">
        <div class="carousel-caption">
          <p class="slider-text-1">"Start Simple thinks outside the box and offers solutions through the creative process of developing apps.<br>They helped me succeed!"</p>
          <p class="slider-text-2">Nancy Young<br>Managing Director, Amazingly</p>
        </div>
      </div>
      <div class="carousel-item" style="background-image: url('images/7-start-simple-slider.jpg');">
        <div class="carousel-caption">
          <p class="slider-text-1">"Simple yet elegant solution to showcase our product and services.<br>Couldn't have asked for more!"</p>
          <p class="slider-text-2">Glenn Harrold<br>Marketing Manager</p>
        </div>
      </div>
    </div><a class="carousel-control-prev" href="#tf-carousel" role="button" data-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="carousel-control-next" href="#tf-carousel" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="sr-only">Next</span></a>
  </div>
</div>
<div class="tf-contact-section">
  <div class="container" id="contact">
    <h2 class="h4">Tell us About Your Requirement</h2>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-12">
        <h3 class="h5">Contact us</h3>
        <form action="https://formspree.io/youremail@example.com" method="POST">
          <div class="row no-gutters">
            <div class="col-lg-6 col-md-12 col-sm-12 tf-contact-col">
              <input class="bg-light form-control" type="text" name="name" placeholder="*Name" required="required"/>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 pb-2">
              <input class="bg-light form-control" type="email" name="_replyto" placeholder="*Your Email Address" required="required"/>
            </div>
          </div>
          <div class="row pb-2 no-gutters">
            <div class="col-md-12 col-sm-12">
              <textarea class="bg-light mb-2 form-control" name="message" placeholder="*Your Message" rows="5" required="required"></textarea>
            </div>
          </div>
          <button class="btn btn-primary" type="submit">Submit</button>
        </form>
      </div>
      <div class="col-md-8 col-sm-12 float-right text-right">
        <h3 class="h5">Address</h3><span>Gwangju<br/>South Korea</span>
        <p></p>
        <h3 class="h5">Phone</h3>
        <p>(243) 948 3866</p>
        <h3 class="h5">Email</h3>
        <p>cocojey02@gmail.com</p>
      </div>
    </div>
  </div>
</div></div>
    </div>
    <footer class="bg-dark py-4 mt-5 tf-footer">
      <div class="container text-light">
        <div class="row">
          <div class="col-md-6 col-sm-12">&copy; JH CREW. All rights reserved.</div>
          <div class="col-md-6 col-sm-12 text-right tf-design">Powered by <a href="https://templateflip.com" target="_blank">W3school</a></div>
        </div>
      </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="scripts/main.js"></script>
  </body>
</html>
