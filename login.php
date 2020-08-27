<?php

require("common.php");
include("header2.php");

$empty_field = null;
$emailErr = null;
//$pass_err = null;
$flag=0;
$email_format=0;
$trap=0;


if(!empty($_POST)) {
    if(empty($_POST['email']) || empty($_POST['password']))  { 
        $empty_field = "field is empty<br>";
    }
    if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        //$emailErr = "Invalid email format<br>"; 
        $email_format=1;
    } 
    //if(!preg_match('/^[a-zA-Z0-9]*$/', $_POST['password']))
    //    $pass_err = "Invalid password format <br>";
}

if($empty_field == null && $emailErr == null){
    $statement = $db->prepare("SELECT * FROM user where email = :email"); 
    $statement->bindParam(':email', $_POST['email'], PDO::PARAM_STR);
    $statement->execute(  
        array(  
             'email'     =>     $_POST["email"],  
            // 'password'     =>     $_POST["password"]  
        )  
   );
   $row = $statement->fetch(PDO::FETCH_ASSOC);  //FETCH_OBJ
   $count = $statement->rowCount();  
   if($count > 0)  
   {  
    $hashedPwdCheck = password_verify($_POST['password'], $row['password']);
    if($hashedPwdCheck == true) {
    $_SESSION['user']['u_id'] = $row['id'];
    $_SESSION['user']['u_name'] = $row['name'];
    $_SESSION['user']['u_email'] = $row['email'];
        $_SESSION["email"] = $_POST["email"];  
        header("Location: index.php?login=success");  
    } else {
        $trap=1;
    }
   }  
   else  
   {  if(!$statement) {
    $message = '<label>Wrong Data</label>';  
    echo $message;
     } else {
        $flag=1;
     }
        
   }  

} else {
    echo $empty_field;
    echo $emailErr;
}

?>
<section id="login">
<h2 class="page-header" style="text-align: center">Admin Login</h2><br>

<form method="POST" action="login.php" class="col-md-4 col-md-offset-4">
  <div class="imgcontainer">
    <img src="img/image.png" alt="" class="img-circle avatar">
  </div>

  <div class="form-group">
    <?php if($email_format) { ?>
        <div class="alert alert-danger">
            Invalid Email
        </div>
    <?php } ?>
    <?php if($trap) { ?>
        <div class="alert alert-danger">
            Invalid Password
        </div>
    <?php } ?>
    <label for="uname"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="form-group" style="background-color:#f1f1f1">
    <span class="psw">New user? <a href="register.php">Please click here for registration</a></span>
  </div>
</form>
</section>
<div class="footer">
    <p>STUDENT INFORMATION SYSTEM, Copyright &copy; 2018</p>
</div>

<?php

include("footer.php");

?>