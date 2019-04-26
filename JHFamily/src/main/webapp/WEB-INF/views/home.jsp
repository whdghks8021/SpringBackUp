<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>메인타이틀</title>
    <!-- 즐겨찾기 추가시 간단한 정보. -->
    <meta name="description" content="반려견과 떠나는 신나는 여행 JHDog."/>
    <link href="https://fonts.googleapis.com/css?family=Oxygen:300,400,600,700" rel="stylesheet">
    <link href="/jh/css/main.css" rel="stylesheet"> <!-- main.css 경로 -->
  </head>
  <body id="top">
    <header class="tf-header">
      <nav class="navbar py-5 navbar-dark">
        <div class="container">
          <h1><a class="navbar-brand" href="/">Start Simple</a></h1>
          <div id="navbar">
            <ul class="nav pull-right">
              <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
              <li class="nav-item"><a class="nav-link" href="#work">Place</a></li>
              <li class="nav-item"><a class="nav-link" href="#contact">Info</a></li>
              <li class="nav-item"><a class="nav-link" href="#contact">Community</a></li>
              <li class="nav-item"><a class="nav-link" href="#contact">About</a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="container">
        <div class="row">
          <div class="col-md-7 col-sm-12">
            <h2>애완동물과 함께하는 여행 <br><br></h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-7 col-sm-12">
            <p class="mt-4">우리 모두 함꼐해요</p>
            <p class="mt-5"><strong class="text-uppercase">신나는 여행!</strong><span></span></p>
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
    <h2 class="h3">바로가기 메뉴</h2>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-12 pt-2">
        <div class="card"><img class="img-fluid card-img-top" src="images/2-start-simple.jpg" alt="2-start-simple"/>
          <div class="card-body">
            <p class="text-muted">음식점</p><a class="text-dark card-link" href="/restaurant">더 알아보자</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-12 pt-2">
        <div class="card"><img class="img-fluid card-img-top" src="images/3-start-simple.jpg" alt="3-start-simple"/>
          <div class="card-body">
            <p class="text-muted">쇼핑</p><a class="text-dark card-link" href="#">더 알아보자</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-12 pt-2">
        <div class="card"><img class="img-fluid card-img-top" src="images/4-start-simple.jpg" alt="4-start-simple"/>
          <div class="card-body">
            <p class="text-muted">숙소</p><a class="text-dark card-link" href="#">더 알아보자</a>
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
        <h3 class="h5">Address</h3><span>Start Simple<br/>United States</span>
        <p></p>
        <h3 class="h5">Phone</h3>
        <p>(243) 948 3866</p>
        <h3 class="h5">Email</h3>
        <p>contact@example.com</p>
      </div>
    </div>
  </div>
</div></div>
    </div>
    <footer class="bg-dark py-4 mt-5 tf-footer">
      <div class="container text-light">
        <div class="row">
          <div class="col-md-6 col-sm-12">&copy; JHCompony. All rights reserved.</div>
          <div class="col-md-6 col-sm-12 text-right tf-design">Design - <a target="_blank">안쩡</a></div>
        </div>
      </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="scripts/main.js"></script>
  </body>
</html>