<?php 
extract($_POST);
if(isset($save))
{

	if($source=="" || $amount=="" || $group=="" || $payment=="" || $due=="")
	{
	$err="<font color='red'>fill all the fileds first</font>";	
	}
	else
	{
$sql=mysqli_query($conn,"select * from loan where group_id='$group'");
$r=mysqli_num_rows($sql);
		if($r!=true)
		{
		mysqli_query($conn,"insert into loan values('','$group','$source','$amount','$intereset','$payment_term','$total_paid','$emi_per_month','$payment','$due')");
		
$err="<font color='blue'>Congrates Loan allot to this Group</font>";
		}
		
		else
		{

	$err="<font color='red'>Loan already allotted to this Group</font>";
		
		}
	}
}

?>
<h2 align="center" style="color:#00FFFF;text-decoration:underline">Allowt Loan</h2>
<form method="post">
	
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4"><?php echo @$err;?></div>
	</div>
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Select Group</div>
		<div class="col-sm-5">
		<select name="group" class="form-control" required>
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
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Loan Source</div>
		<div class="col-sm-5">
		<select name="source" class="form-control" required>
			<option value="">Select Loan COming Source</option>
			<option>Government</option>
			<option>Council</option>
		</select>
		</div>
	</div>
	
	<script>
		function loanamount()
		{
		var original=document.getElementById("original").value;	
		var interest=document.getElementById("interest").value;	
		var year=document.getElementById("payment_term").value;	
		
		var interest1=(Number(original)*Number(interest)*Number(year))/100;
		var total=Number(original)+Number(interest1);
		
		var emi=total/(year*12);
		document.getElementById("total_paid").value=total;
		document.getElementById("emi_per_month").value=emi;
		
		}
	</script>
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Original Amount</div>
		<div class="col-sm-5">
		<input type="number" id="original" name="amount" class="form-control" required/></div>
	</div>
	
	
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Loan Intereset(%)</div>
		<div class="col-sm-5">
		<input type="text" name="intereset" id="interest" value="10" readonly="true" class="form-control" required/></div>
	</div>
	

	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Term of Payment(In Year)</div>
		<div class="col-sm-5">
		<select onchange="loanamount()" name="payment_term" id="payment_term" class="form-control" required>
			<option value="">Term of Payment</option>
			<?php
				for($i=1;$i<=10;$i++)
				{
				echo "<option value='".$i."'>".$i."</option>";
				}
			 ?>
		</select>
		</div>
	</div>
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Total Paid(With Intereset)</div>
		<div class="col-sm-5">
		<input type="text" id="total_paid" name="total_paid" class="form-control" readonly/></div>
	</div>
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Pay Every Month(Emi Per Month)</div>
		<div class="col-sm-5">
		<input type="text" id="emi_per_month" name="emi_per_month" class="form-control" readonly/></div>
	</div>
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Payment Schedule</div>
		<div class="col-sm-5">
		<input type="date" name="payment" min="2016-01-01" class="form-control"  required/>
	
		</div>
	</div>
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-4">Payment Due Date</div>
		<div class="col-sm-5">
		<input type="date" name="due" min="2016-01-01" class="form-control" required/>
	
		</div>
	</div>
	
	
	<div class="row" style="margin-top:10px">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
		
		
<input type="submit" value="Allowt New Loan" name="save" class="btn btn-success"/>
		<input type="reset" class="btn btn-success"/>
		</div>
	</div>
</form>	