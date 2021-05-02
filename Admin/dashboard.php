 <?php 
$q=mysqli_query($conn,"select * from member ");
$r=mysqli_num_rows($q);



$q2=mysqli_query($conn,"select * from member where gender='m'");
$r2=mysqli_num_rows($q2);


$q3=mysqli_query($conn,"select * from member where gender='f'");
$r3=mysqli_num_rows($q3);




$q1=mysqli_query($conn,"select * from groups ");
$r1=mysqli_num_rows($q1);



?>
 <h1 class="page-header">Dashboard</h1>
		           <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Total Goups</h4>
              <span class="text-muted"><?php echo $r1; ?></span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Total Members</h4>
              <span class="text-muted"><?php echo $r; ?></span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Total Men Members</h4>
              <span class="text-muted"><?php echo $r2; ?></span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Total Women Members</h4>
              <span class="text-muted"><?php echo $r3; ?></span>
            </div>
          </div>