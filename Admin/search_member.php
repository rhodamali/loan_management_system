<?php 
$search=$_POST['searchMember'];
$q=mysqli_query($conn,"select * from member where first_name='$search' or last_name='$search'");
$rr=mysqli_num_rows($q);
if(!$rr)
{
echo "<h2 style='color:red'>No Results found !!!</h2>";
}
else
{
?>
<script>
	function DeleteMember(id)
	{
		if(confirm("You want to delete this Member ?"))
		{
		window.location.href="delete_group_member.php?id="+id;
		}
	}
</script>
<h2 style="color:#00FFCC; text-decoration:underline" align="center" >Results Found</h2>
<table class="table table-bordered">
	
	<tr>
		<td colspan="16"><a href="index.php?page=display_member">Go Back</a></td>
	</tr>
	<Tr class="active">
		<th>Sr.No</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gender</th>
		<th>Group</th>
		<th>Date</th>
		<th>Delete</th>
		<th>Update</th>
	</Tr>
		<?php 


$i=1;
while($row=mysqli_fetch_assoc($q))
{

echo "<Tr>";
echo "<td>".$i."</td>";
echo "<td>".$row['first_name']."</td>";
echo "<td>".$row['last_name']."</td>";
echo "<td>".$row['gender']."</td>";

$q1=mysqli_query($conn,"select * from groups where group_id='".$row['group_id']."'");
$r1=mysqli_fetch_assoc($q1);

echo "<td>".$r1['group_name']."</td>";
echo "<td>".$row['join_date']."</td>";

?>

<Td><a href="javascript:DeleteMember('<?php echo $row['member_id']; ?>')" style='color:Red'><span class='glyphicon glyphicon-trash'></span></a></td>

<Td><a href="index.php?page=update_group_member&member_id=<?php echo $row['member_id']; ?>" style='color:green'><span class='glyphicon glyphicon-edit'></span></a></td>
<?php 

echo "</Tr>";
$i++;
}
		?>
		
</table>
<?php }?>