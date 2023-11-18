<!DOCTYPE html>
<html lang="pl">
<head>
<!-- #004AAD -->



    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Strona IO</title>
    
    <!-- Bootstrap CSS -->  
    <!--4.0--><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    





    <link rel="stylesheet" href="css/main.css">







</head>
<body>



<nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler1" 
            aria-controls="navbarToggler1" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button> 
    <a class="navbar-brand" href="#">Logo</a>

    <div class="collapse navbar-collapse" id="navbarToggler1">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
            </li>
        </ul>

        <!--przed kliknieciem-->
        <button class="btn btn-outline-success my-2 my-sm-0" type="button" data-toggle="collapse" data-target="#searchCollapse" aria-controls="searchCollapse" aria-expanded="false">
            <i class="fas fa-search"></i>
        </button>
        <!--po kliknieciu-->
        <form class="collapse form-inline my-2 my-lg-0" id="searchCollapse">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Szukaj</button>
        </form>
        
    </div>  
</nav>






Strona z filmami






<!-- jebana karuzela -->

<div class="col-md-6 mx-auto">
    <div id="carouselExample" class="carousel slide" data-ride="carousel">

        <div class="carousel-inner">
            <div class="carousel-item active">
            <img src="./pics/carouselmainfirst/carpic1.jpg" class="d-block w-100" alt="Image 1">
            </div>
            <div class="carousel-item">
            <img src="./pics/carouselmainfirst/carpic2.jpg" class="d-block w-100" alt="Image 2">
            </div>
            <div class="carousel-item">
            <img src="./pics/carouselmainfirst/carpic3.jpg" class="d-block w-100" alt="Image 3">
            </div>
        </div>

        <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#carouselExample" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    </div>
</div>







<?php


//! nie tykaj
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "eparasol";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}






// Close connection
mysqli_close($conn);
?>





<!-- TO MUSI BYC NA KONCU-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>

