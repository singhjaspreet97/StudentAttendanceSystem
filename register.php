
<?php 

     
require("common.php");
include("header3.php");

$empty_field = null;
$emailErr = null;
$wrong_name = null;
$pass_err = null;
$number_con = null;
$fieldempty=0;
$err_email=0;


if(!empty($_POST)) 

{ 
   
    if(empty($_POST['name']) || empty($_POST['email']) || empty($_POST['password']) || empty($_POST['number']) || empty($_POST['date']) )  { 
        //$empty_field = "field is empty<br>"; 
        $fieldempty=1;
    }
    if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $emailErr = "Invalid Email Format<br>"; 
    } 
    if(!preg_match('/^[a-zA-Z ]*$/', $_POST['name'])) {    
        $wrong_name = "Input Valid Name <br>";
    }
    if(!preg_match('/^[a-zA-Z0-9]*$/', $_POST['password'])) {
        $pass_err = "Invalid password<br>";
    }
    if(!preg_match('/^[+0-9]*$/', $_POST['number'])) {
        $number_con = "Number not valid <br>";
    }
       
    
      if($empty_field == null && $emailErr == null && $wrong_name == null && $pass_err == null && $number_con == null){

         
         $hashedPwd = password_hash($_POST['password'], PASSWORD_DEFAULT);
         $statement = $db->prepare("INSERT INTO user (name, email, password, contact, date_of_birth) VALUES (:name, :email, :pass, :number, :date)");
         $statement->bindParam(':name', $_POST['name'], PDO::PARAM_STR); 
         $statement->bindParam(':email', $_POST['email'], PDO::PARAM_STR);
         $statement ->bindParam(':pass', $hashedPwd, PDO::PARAM_STR); 
         $statement->bindParam(':number', $_POST['number'], PDO::PARAM_STR);
         $statement->bindParam(':date', $_POST['date'], PDO::PARAM_STR);
         $statement->execute();
         header("Location: login.php?Successful insert"); 
        echo "";

    }
    else{
        echo $empty_field;
        echo $emailErr;
        echo $wrong_name;
        echo $pass_err;
        echo $number_con;
    }
   
} 
?>

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" method="POST" action="register.php">
				<span class="contact100-form-title">
					ACCOUNT REGISTER
				</span>
                <?php if($fieldempty) { ?>
                <div class="alert alert-danger">
                NO Empty Field
                </div>
                <?php } ?>
                <?php if($emailErr) { ?>
                <div class="alert alert-danger">
                Invalid Email Format
                </div>
                <?php } ?>
                <?php if($wrong_name) { ?>
                <div class="alert alert-danger">
                Input Valid Name
                </div>
                <?php } ?>
                <?php if($pass_err) { ?>
                <div class="alert alert-danger">
                Invalid password
                </div>
                <?php } ?>
				<div class="wrap-input100 validate-input bg1">
					<span class="label-input100">NAME</span>
					<input class="input100" type="text" name="name" placeholder="Enter Your Name">
				</div>

				<div class="wrap-input100 validate-input bg1">
					<span class="label-input100">EMAIL</span>
					<input class="input100" type="text" name="email" placeholder="Enter Your Email">
				</div>

				<div class="wrap-input100 validate-input bg1">
					<span class="label-input100">PASSWORD</span>
					<input class="input100" type="password" name="password" placeholder="Only a-z,A-Z,0-9">
				</div>

				<div class="wrap-input100 validate-input bg1">
					<span class="label-input100">Contact Number</span>
					<input class="input100" type="number" name="number" placeholder="Enter Phone number">
				</div>

				<div class="wrap-input100 validate-input bg1">
					<span class="label-input100">Date Of Birth</span>
					<input class="input100" type="date" name="date" placeholder="Enter Date-of-birth">
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							Submit
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
    </div>
    <div class="footer" style="
    left: 0;
    bottom: 0;
    width: 100%;
    background-color:black;
    color: white;
    text-align: center;
    padding: 0.5em;
    clear: both;
    position: relative;
    z-index: 10;
    height: 3em;
    margin-top: -3em;">
    <p>STUDENT INFORMATION SYSTEM, Copyright &copy; 2018</p>
</div> 
<?php
include("footer.php");
?>