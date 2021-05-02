<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">
.select-boxes{width: 280px;text-align: center;}
select {
    background-color: #F5F5F5;
    border: 1px double #FB4314;
    color: #55BB91;
    font-family: Georgia;
    font-weight: bold;
    font-size: 14px;
    height: 39px;
    padding: 7px 8px;
    width: 250px;
    outline: none;
    margin: 10px 0 10px 0;
}
select option{
    font-family: Georgia;
    font-size: 14px;
}
</style>
<script src="jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('#region').on('change',function(){
        var regionID = $(this).val();
        if(regionID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'region_id='+regionID,
                success:function(html){
                    $('#district').html(html);
                    $('#division').html('<option value="">Select district first</option>'); 
					$('#ward').html('<option value="">Select division first</option>'); 
					$('#village').html('<option value="">Select division first</option>'); 
                }
            }); 
        }else{
            $('#district').html('<option value="">Select region first</option>');
            $('#division').html('<option value="">Select district first</option>'); 
			$('#ward').html('<option value="">Select division first</option>'); 
			$('#village').html('<option value="">Select division first</option>'); 
        }
    });
    
    $('#district').on('change',function(){
        var districtID = $(this).val();
        if(districtID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'district_id='+districtID,
                success:function(html){
                    $('#division').html(html);
					$('#ward') .html('<option value="">Select  division first</option>');
					$('#village') .html('<option value="">Select ward first</option>');
					
                }
            }); 
        }else{
            $('#division').html('<option value="">Select district first</option>'); 
			$('#ward') .html('<option value="">Select division first</option>');
			$('#village') .html('<option value="">Select ward first</option>');
        }
    });
	
	$('#division').on('change',function(){
        var divisionID = $(this).val();
        if(divisionID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'division_id='+divisionID,
                success:function(html){
                    $('#ward').html(html);
					$('#village') .html('<option value="">Select ward first</option>');
                }
            }); 
        }else{
            $('#ward').html('<option value="">Select division first</option>');
            $('#village') .html('<option value="">Select ward first</option>');			
        }
    });
	
	$('#ward').on('change',function(){
        var wardID = $(this).val();
        if(wardID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'ward_id='+wardID,
                success:function(html){
                    $('#village').html(html);
                }
            }); 
        }else{
            $('#village').html('<option value="">Select ward first</option>'); 
        }
    });
});

</script>
</head>
<body>
    <div class="select-boxes">
    <?php
    //Include database configuration file
    include('dbConfig.php');
    
    //Get all region data
    $query = $db->query("SELECT * FROM region  ORDER BY region_name ASC");
    
    //Count total number of rows
    $rowCount = $query->num_rows;
    ?>
    <select name="region" id="region">
        <option value="">Select Region</option>
        <?php
        if($rowCount > 0){
            while($row = $query->fetch_assoc()){ 
                echo '<option value="'.$row['region_id'].'">'.$row['region_name'].'</option>';
            }
        }else{
            echo '<option value="">Region not available</option>';
        }
        ?>
    </select>
    
    <select name="district" id="district">
        <option value="">Select region first</option>
    </select>
    
    <select name="division" id="division">
        <option value="">Select  district first</option>
    </select>
	
	<select name="ward" id="ward">
        <option value="">Select  division first</option>
    </select>
	
	<select name="village" id="village">
        <option value="">Select  ward first</option>
    </select>
	
	
	
    </div>
</body>
</html>
