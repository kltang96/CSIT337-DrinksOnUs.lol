<?php 
include("functions.php");
include('db.php');
session_start();  
   
if(!isset($_SESSION['customer_email'])){
    header("location:customer_login.php");
}
?>
        
<!DOCTYPE>
<html>
	<head>
		<title>DrinksOnUs.lol</title>
    	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    	<style>
            .card-img-top {
                width:260px;
                height:250px;
            }
            .card{
                margin-left:10px;
                margin-right:10px;
                margin-bottom:10px;
                margin-top:5px;
            }
            .card-body{
                
                width: 260px;
            }
    	</style>
	</head>
	
<body>
		<!--Header starts here-->
		<div class="container-fluid">
		    <h1 style="margin-top: 20px;margin-bottom: 20px;">DrinksOnUs.lol</h1>
			<h3 align='right'>by Kailin Tang, Alex Pintado, Jeff Marc</h3>
		</div>
		<!--Header ends here-->
		
		<!--Navigation Bar starts-->
		<div class = "container-fluid sticky-top">
            <div class="navbar navbar-expand-lg navbar-light bg-light">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item active">
                    <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Products
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="index.php?cat=1">Soda</a>
                      <a class="dropdown-item" href="index.php?cat=2">Coffee</a>
                      <a class="dropdown-item" href="index.php?cat=3">Juice</a>
                      <a class="dropdown-item" href="index.php?cat=4">Sports</a>
                      <a class="dropdown-item" href="index.php?cat=5">Energy</a>
                    </div>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="my_account.php">My Account</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="cart.php">Shopping Cart</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" href="#">Contact Us</a>
                  </li>
                   <li class="nav-item">
                    <a class="nav-link " href="logout.php">Log out</a>
                  </li>
                </ul>
              </div>
                <form method="get" action="results.php" enctype="multipart/form-data" class="form-inline float-right" style="margin-bottom: 0px;">
                    <input class="form-control mr-sm-2" type="text"name="user_query" placeholder="Search" aria-label="Search">
                    <button class="btn my-2 my-sm-0" type="submit" name="search" value="Search">Search</button>
                </form>
            </div>
        </div>
		<!--Navigation Bar ends-->
	
		<!--Content wrapper starts-->
		<div class="container-fluid">
            <div class ="row">
                <div class="col-lg-12 float-right">
        			<?php cart(); ?>
        			
            			<div id="shopping_cart"> 
            					
        					<span style="float:right; font-size:17px; padding:5px; line-height:40px;">
        					
				<!-- info line -->
				<?php 
					if(isset($_SESSION['customer_email'])) {
					    echo "<b>Welcome: </b>" . $_SESSION['customer_email'] . " | " ;
					}
					else {
					    echo "<b>Welcome Guest:</b>";
					}
				?>
				<b style='color:orange;'>Your Shopping Cart - </b>
				Total items: <b><?php total_items();?></b>, Totalprice: <b><?php total_price(); ?></b> 
            					
            		
            					</span>
            	        </div>
                </div>
            </div>
            
            <div class="row" style="padding-left: 30px; padding-right:20px; align="center";">
        				<?php getPro(); ?>
        				<?php getCatPro(); ?>
            </div>
	    </div>

		<!--Content wrapper ends-->
	    
                <div class="class="fixed-bottom"">
        			<h2 style="text-align: center">CSIT337 2018</h2>
    			</div>
            
</body>
</html>