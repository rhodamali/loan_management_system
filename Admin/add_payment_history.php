<?php 
extract($_POST);
if(isset($save))
{
		mysqli_query($conn,"insert into payment_history values('','$group','$amount',now())");
		
$err="<font color='blue'>Congrates New Payment added </font>";
}

?>

<script>
function showLoanDetails(data)
{

if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}



xmlhttp.onreadystatechange=function()
{
if (xmlhttp.readyState==4 && xmlhttp.status==200)
{
document.getElementById("loandetails").innerHTML=xmlhttp.responseText;
}
}
//alert(data);
xmlhttp.open("GET","show_group_ajax.php?loan_details="+data,true);
xmlhttp.send();
}
</script>

<h2 align="center" style="color:#00FFFF;text-decoration:underline">Add New Payment</h2>
<form method="post">
	
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4"><?php echo @$err;?></div>
	</div>
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Select Group</div>
		<div class="col-sm-5">
		<select name="group" onchange="showLoanDetails(this.value)" class="form-control" required>
			<option value="">Select Group</option>
			<?php 
$q1=mysqli_query($conn,"select * from groups");
while($r1=mysqli_fetch_assoc($q1))
{
echo "<option value='".$r1['group_id']."'>".$r1['group_name']."</option>";
}
			?>
		</select>
		</div>
	</div>
	
	<div class="row" id="loandetails">
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Original Amount</div>
		<div class="col-sm-5">
		<input type="number" readonly="true" id="original" name="amount" class="form-control" required/></div>
	</div>
	
	
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Loan Intereset(%)</div>
		<div class="col-sm-5">
		<input type="text" name="intereset" id="interest" readonly="true" class="form-control" required/></div>
	</div>
	

	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Term of Payment(In Year)</div>
		<div class="col-sm-5">
		<input type="text" readonly="true"  name="payment_term" id="payment_term" class="form-control" >
			
			
		</div>
	</div>
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Total Payment(With Intereset)</div>
		<div class="col-sm-5">
		<input type="text" readonly="true" id="total_paid" name="total_paid" class="form-control" readonly/></div>
	</div>
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Pay Every Month(Emi Per Month)</div>
		<div class="col-sm-5">
		<input type="text" readonly="true" id="emi_per_month" name="emi_per_month" class="form-control" readonly/></div>
	</div>
	</div>
	
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Enter Emi amount</div>
		<div class="col-sm-5">
		<input type="text" name="amount"  class="form-control"  required/>
	
		</div>
	</div>
	
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
		
		
<input type="submit" value="Add New Payment" name="save" class="btn btn-success"/>
		<input type="reset" class="btn btn-success"/>
		</div>
	</div>
</form>	