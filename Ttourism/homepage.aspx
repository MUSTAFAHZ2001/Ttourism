<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Ttourism.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
.carousel-item {width:1366;
  height:100%;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Close Menu</a>
  <a href="#food" onclick="w3_close()" class="w3-bar-item w3-button">Food</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">About</a>
</nav>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://media.cntraveler.com/photos/5cb63a0bc131b962ade953ad/master/w_4000,h_2670,c_limit/Banff-Canada_GettyImages-680900749.jpg" alt="First slide">
    </div>
    <div class="carousel-item ">
      <img class="d-block w-100" src="https://images.pexels.com/photos/815880/pexels-photo-815880.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://images.pexels.com/photos/2884865/pexels-photo-2884865.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://cdn.kimkim.com/files/a/content_articles/featured_photos/1c3a1bf734cb24544a8408766cc213834102f182/big-b0d1742a517102b4f76bf4566945b20d.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://wallpapersmug.com/large/96e4eb/nature-dolomite-mountains-italy.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- Top menu -->
<!-- <div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    <div class="w3-right w3-padding-16">Mail</div>
    <div class="w3-center w3-padding-16">My Food</div>
  </div>
</div> -->
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi20XaSOgxd5BkGUL7JAycHIsDmCh0H6lnAiFDt8p0Dr9HzTbK6Wk64FD11T9AWGZRT9I&usqp=CAU" alt="Search" style="width:100%">
      <h3>DIGITAL TRIP INVENTORY</h3>
      <p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="img/im3.jpeg" alt="Steak" style="width:70% ">
      <h3>SEARCH TRIP</h3>
      <p>Once again, some random text to lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="https://media-exp1.licdn.com/dms/image/C4D1BAQGGdNo6IlDOCQ/company-background_10000/0/1519801807380?e=2159024400&v=beta&t=VWHuXHsmYAXZB4XQn7H63FLLvHjjMfs6CdxCh3HwcCM" alt="Travel" style="width:100%">
      <h3>FLIGHTS</h3>
      <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
      <p>What else?</p>
    </div>
    <div class="w3-quarter">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuINx3Y2_f5Zj-E_Df6mqlypWbG_poxYWqzQ&usqp=CAU" alt="Hotel" style="width:100%">
      <h3>HOTEL MANAGEMENT</h3>
      <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
  </div>

  <!-- Second Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center">
    <div class="w3-quarter">
      <img src="https://okcredit-blog-images-prod.storage.googleapis.com/2021/01/bus1.jpg" alt="Transport" style="width:100%">
      <h3>TRANSPORT MANAGEMENT</h3>
      <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="https://images.unsplash.com/photo-1601024445121-e5b82f020549?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2t5ZGl2aW5nfGVufDB8fDB8fA%3D%3D&w=1000&q=80" alt="Adventure" style="width:100%">
      <h3>ADVENTURES</h3>
      <p>Once again, some random text to lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="https://www.onlinegrowthguru.com/wp-content/uploads/elementor/thumbs/Food-Promotion-Helping-Food-Business-p4r3azgkvwmsysn11gqn1lnj01s2285vzf4i8wvxps.jpg" alt="Sandwich" style="width:100%">
      <h3>FOODS AND BEVERAGES</h3>
      <p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="https://rosmade.net/wp-content/uploads/2017/11/Recreational-Activities.jpg" alt="Croissant" style="width:100%">
      <h3>LEISURE ACTIVITY</h3>
      <p>Lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
  </div>
    <hr>
  <!-- About Section -->
  <div class="w3-container w3-padding-32 w3-center">  
    <h2>ABOUT HUMA, TOURISM MANAGEMENT</h2><br>
    <img src="https://www1.chester.ac.uk/sites/default/files/styles/hero/public/cottages-in-the-middle-of-beach-753626_0.jpg?itok=k5L_OWyB" alt="Me" class="w3-image" style="display:block;margin:auto" width="100%" height="600">
    <div class="w3-padding-32">
        <hr>
      <h4><b>Explore a new World!</b></h4>
     <h5> <p>As the name specifies “TOURISM  MANAGEMENT SYSTEM” is a software developed for managing tour booking. Identification of the drawbacks of the existing system leads to the designing of computerized system  that  will  be  compatible  to the  existing  system  with  the  system  Which  is  more  user  friendly and more GUI oriented. We can improve the efficiency of the system, thus overcome the drawbacks of the existing system.
        <br>
        •	Less human error 
        •	Strength and strain of manual labour can be reduced 
        •	High security 
        •	Data redundancy can be avoided to some extent 
        •	Data consistency 
        •	Easy to handle 
        •	Easy data updating 
        •	Easy record keeping 
        •	Backup data can be easily generated 
        
        </p>
      </h5>
        
    </div>
  </div>
  
 

<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>
</asp:Content>
