
<html>
<head>
</head>>
  <body>
    <div>
       <form action="" method="Post">
	   <label>Email address</label><input type="Email" name="email"><br/>
	   <label> Password</label><input type="Password" name="password"><br/>
	   <label>comfirm Password</label><input type="Password" name="password_comf"><br/>
	   <input type="submit" name="submit"><input type="button" value="clear form">
	</form>
    </div>
    
  </body>
</html>
<?php
 $servername="localhost";
 $username="hr";
 $password="password";
 try {
    $conn = new PDO("mysql:host=$servername;dbname=group_project337, $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO  (email,password) VALUES ('"+$email+"','"+$password+"')";
    // use exec() because no results are returned
    $conn->exec($sql);
    echo "New record created successfully";
    }
catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }
?>