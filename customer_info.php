<!doctype html>
<html>
  <head> <style>
      form {
    align:center;
}
label{
	   display:inline-block;
	   float:left;
	   clear:left;
	   width:75px;
	   text-align:left;
   }
 div form{
   width:400;
   height:400;
   top:100%;
   left:100%;
   margin-top:250px;
   margin-left:250px;
border-style: double;
   
}
   </style>
   </head>
   <body>
   
	<div><p>Please fill out this form</p>
        <form action""  method="Post">
            <label>First Name<input type="text" name="fname"><br/>
	    <label>Mid Name<input type="text" name="Mname"><br/>
	    <label>Last Name </label><input type="text" name="lname"><br/>
            <label>D.O.B</label><input type="text" name="d_o_b"><br/>
	    <label>Gender</label><input type="text" name="gender"><br/>
 	    <label> SSN</label><input type="password" name="ssn"><br/>
	    <label> Phone</label><input type="text" name="phone"><br/>
	    <label> Email Address</label><input type="email" name="email"><br/>
	    <label> Address</label><input type="text" name="address"><br/>
 	    <label> City</label><input type="text" name="city"><br/>
	    <label> State</label><input type="text" name="state"><br/>
	    <label> Zip code</label><input type="text" name="zip"><br/>
	</form></div>
   </body>
</html>

<?php
require_once 'login';
$fname=$_POST["fname"];
$Lname=$_POST["lname"];
$Mname=$_POST["Mname"];
$D_o_B=$_POST["d_o_b"];
$Ssn=$_POST["ssn"];
$phone=$_POST["phone"];
$email=$_POST["email"];
$address=$_POST["address"];
$city=$_POST["city"];
$state=$_POST["state"];
$zip_code=$_POST["zip"];

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO MyGuests (first_name,M_name,last_name,date_birth,gender,ssn,phone,email,address,city,states,zip_code)
    VALUES ($fname+","+$Mname+","+$Lname+","+$D_o_b+","+$Ssn+","+$phone","+$email+","+$address+","+$city+","+$state+","+$zip+")";
    // use exec() because no results are returned
    $conn->exec($sql);
    echo "New record created successfully";
    }
catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }

$conn = null;
?> 