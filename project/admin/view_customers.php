<table width="80%" align="center" border='1'> 
	
	<tr align="center">
		<td colspan="6"><h2>View All Customers Here</h2></td>
	</tr>
	
	<tr align="center" bgcolor="grey">
		<th>#</th>
		<th>Name</th>
		<th>Email</th>
		<th>Delete</th>
	</tr>
	<?php 
	include("db.php");
	
	$get_c = "select * from customers";
	
	$run_c = $con->query($get_c); 
	
	$i = 0;
	
	while ($row_c=$run_c->fetch()){
		
		$c_id = $row_c['customer_id'];
		$c_name = $row_c['customer_name'];
		$c_email = $row_c['customer_email'];
		$i++;
	
	?>
	<tr align="center">
		<td><?php echo $i;?></td>
		<td><?php echo $c_name;?></td>
		<td><?php echo $c_email;?></td>
		<td><a href="delete_c.php?delete_c=<?php echo $c_id;?>">Delete</a></td>
	
	</tr>
	<?php } ?>




</table>