<?php
$set=0;
include("common.php");
if(empty($_SESSION['user'])){
        header("Location: home.html");
        } else {
            //echo "";
            $set=1;
        }
?>



<?php

include("header.php");
include("db.php");
//if(empty($_SESSION['user'])){
//        header("Location: login.html");
 //       } else {
  //          echo "You are logged in";
   //     }
$flag=0;
$update=0;
if(isset($_POST['submit']))
{
    $date = date("Y-m-d");
    $query1 = "SELECT * FROM attendence_records WHERE date='$date'";
    $records = mysqli_query($conn, $query1);
    if(!$records) {
        die("QUERY FAILED" . mysqli_error($conn));
    }
    $num = mysqli_num_rows($records);

    if($num)
    {
        foreach($_POST['attendence_status'] as $id=>$attendence_status)
        {
            $student_name = mysqli_real_escape_string($conn, $_POST['student_name'][$id]);
            $roll_number = mysqli_real_escape_string($conn, $_POST['roll_number'][$id]);
    
            $query2 = "UPDATE attendence_records SET student_name='$student_name',roll_number='$roll_number',attendence_status='$attendence_status',date='$date' WHERE date='$date' and student_name='$student_name'";
            $result = mysqli_query($conn, $query2);
            if(!$result) {
                die("QUERY FAILED" . mysqli_error($conn));
            } else {
                $update=1;
            }
        }
    } else {
        foreach($_POST['attendence_status'] as $id=>$attendence_status)
        {
            $student_name = mysqli_real_escape_string($conn, $_POST['student_name'][$id]);
            $roll_number = mysqli_real_escape_string($conn, $_POST['roll_number'][$id]);
            $date = date("Y-m-d H:i:s");
    
            $query = "INSERT into attendence_records(student_name, roll_number,attendence_status,date) VALUES ('$student_name','$roll_number','$attendence_status','$date')";
            $result = mysqli_query($conn, $query);
    
            if(!$result) {
                die("QUERY FAILED" . mysqli_error($conn));
            } else {
                $flag=1;
            }
        }
    }
 
}

?> 
<?php

if(isset($_POST['logout'])) {
    session_start();
    session_unset();
    session_destroy();
    header("Location: home.html");
    exit();
}
?>

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2>
                <a class="btn btn-success" href="add.php">Add Student</a>
                <a class="btn btn-info pull-right" href="view_all.php">View All</a>
                
            </h2>
            <form action="index.php" method="POST">
                    <button class="btn btn-primary" type="submit" name="logout">Logout</button>
            </form>
            <?php if($flag) { ?>
            <div class="alert alert-success">
                Attendence Date Insert Successfully
            </div>
            <?php } ?>
            <?php if($update) { ?>
            <div class="alert alert-success">
                Student Attendence Updated successfully
            </div>
            <?php } ?>
            <h3>
                <div class="well text-center">Date : <?php echo date("Y-m-d"); ?> </div>
            </h3> 
            <?php if($set) { ?>
           <div class="alert alert-success logg">
           You are logged in
           </div>
           <?php } ?>
            <div class="panel panel-body">
                <form action="index.php" method="post">
                    <table class="table table-striped">
                        <tr>
                        <th>Serial Number</th><th>Student Name</th><th>Roll Number</th><th>Attendence Status</th>
                        </tr>
                        <?php
                            $query = "SELECT * FROM attendence";
                            $result = mysqli_query($conn, $query);
                            $serialnumber=0;
                            $counter=0;
                            while($row=mysqli_fetch_array($result))
                            {
                                $serialnumber++;         // for index
                            ?>
                            <tr>
                            <td> <?php echo $serialnumber; ?> 
                            <td> <?php echo $row['student_name']; ?> </td>
                            <input type="hidden" value="<?php echo $row['student_name']; ?>" name="student_name[]">
                            </td>
                            <td> <?php echo $row['roll_number']; ?> 
                            <input type="hidden" value="<?php echo $row['roll_number']; ?>" name="roll_number[]">
                            </td>
                            <td>
                                <input type="radio" name="attendence_status[<?php echo $counter; ?>]" value="Present"
                                <?php if(isset($_POST['attendence_status'][$counter]) && $_POST['attendence_status'][$counter]=="Present") {
                                echo "checked=checked"; 
                                }
                                ?>
                                 required> Present
                                <input type="radio" name="attendence_status[<?php echo $counter; ?>]" value="Absent" 
                                <?php if(isset($_POST['attendence_status'][$counter]) && $_POST['attendence_status'][$counter]=="Absent") {
                                echo "checked=checked"; 
                                }
                                ?>
                                required> Absent
                            </td>
                            </tr>

                            <?php
                            $counter++;
                            }
                            ?>
                            
                            <?php
                            if(!$result) {   
                                die("QUERY FAILED" . mysqli_error($conn));
                            }
                        ?>
                    </table>
                    <input type="submit" name="submit" value="Submit" class="btn btn-primary">
                </form>
            </div>        
        </div>
    </div> 
</div>