<table width="80%" align="center" border='1'> 
	
	<tr align="center">
		<td colspan="6"><h2>View All Categories Here</h2></td>
	</tr>
	
	<tr align="center" bgcolor="grey">
		<th>Category ID</th>
		<th>Category Title</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<?php 
	include("db.php");
	
	$get_cat = "select * from categories";
	
	$run_cat = $con->query($get_cat); 
	
	$i = 0;
	
	while ($row_cat=$run_cat->fetch()){
		
		$cat_id = $row_cat['cat_id'];
		$cat_title = $row_cat['cat_title'];
		$i++;
	
	?>
	<tr align="center">
		<td><?php echo $i;?></td>
		<td><?php echo $cat_title;?></td>
		<td><a href="index.php?edit_cat=<?php echo $cat_id; ?>">Edit</a></td>
		<td><a href="delete_cat.php?delete_cat=<?php echo $cat_id;?>">Delete</a></td>
	
	</tr>
	<?php } ?>




</table>