<?php
	require_once('db_connect.php');
	
	$myname = $_POST['your_name'];
	$myemail = $_POST['your_email'];
	$wants_money = ($_POST['want_money'] ? 1 : 0);
	$wants_fame = ($_POST['want_fame'] ? 1 : 0);
	$wants_fortune = ($_POST['want_fortune'] ? 1 : 0);
	$wants_kids = ($_POST['kidcount'] ? 1 : 0);
	
	$sql = "INSERT INTO PayPalSandBoxValues (Name, email, money, fame, fortune, kidcount) VALUES ('$myname', '$myemail', $wants_money, $wants_fame, $wants_fortune, $wants_kids)";
	
	$result = mysql_query($sql);
	
	if($result) {
		$new_id = mysql_insert_id();
	} else {
  	$errno = mysql_errno();
  	$errstr = mysql_error();
	}
	
?>
<html>
<body>
<?php
  if(!$result) {
?>
  <h6>MySQL Error</h6>
  <?php print("ERROR $errno: $errstr"); ?>

<? } else { ?>
	<h3>Values Saved</h3>
	<p>
	<?php
	  print("Your name = $myname<br />");
	  print("Email address = $myemail<br />");
	  print("Money? $wants_money<br />");
	  print("Fame? $wants_fame<br />");
	  print("Fortune? $wants_fortune<br />");
	  print("Kids: $wants_kids<br />");
	?>
	</p>
	<hr />
	<h5>IMPORTANT:</h5>
	<p>Your new ID is: <b><?php echo $new_id; ?></b></p>
	<hr />
	<h2>Proceed to Payment Processing...</h2>
	
<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="A4GSUX8EGMVDU">
<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>

<? } ?>
</body>
</html>
