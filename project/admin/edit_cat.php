<?php 
include("db.php"); 

if(isset($_GET['edit_cat'])){

	$cat_id = $_GET['edit_cat']; 
	
	$get_cat = "select * from categories where cat_id='$cat_id'";

	$run_cat = $con->query($get_cat); 
	
	$row_cat = $run_cat->fetch(); 
	
	$cat_id = $row_cat['cat_id'];
	$cat_title = $row_cat['cat_title'];
}


?>
<form action="" method="post" style="padding:80px;">

<b>Update Category:</b>
<input type="text" name="new_cat" value="<?php echo $cat_title;?>"/> 
<input type="submit" name="update_cat" value="Update Category" /> 

</form>

<?php 


	if(isset($_POST['update_cat'])){
	
	$update_id = $cat_id;
	
	$new_cat = $_POST['new_cat'];
	
	$update_cat = "update categories set cat_title='$new_cat' where cat_id='$update_id'";

	$run_cat = $con->query($update_cat); 
	
	if($run_cat){
	
	echo "<script>alert(' Category has been updated!')</script>";
	echo "<script>window.open('index.php?view_cats','_self')</script>";
	}
	}

?>