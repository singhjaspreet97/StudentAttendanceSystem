<?php

include("header.php");
include("db.php");
$flag=0;

if(isset($_POST['submit']))
if ($_POST['submit']){
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $roll = mysqli_real_escape_string($conn, $_POST['roll']);

    {
        $query = "INSERT into attendence(student_name,roll_number) VALUES ('$name','$roll')";
        $query_attendence_info = mysqli_query($conn, $query);

        if(!$query_attendence_info) {
            die("QUERY FAILED" . mysqli_error($conn));
        } else {
            $flag=1;
        }
        
    }}
?>

<div class="container">
    <div class="panel panel-default">
        <?php if($flag) { ?>
            <div class="alert alert-success">
                <strong>Success!</strong> Attendance data successfully inserted
            </div>
        <?php } ?>
        <div class="panel-heading">
            <h2>
                <a class="btn btn-success" href="add.php">Add Student</a>
                <a class="btn btn-info pull-right" href="index.php">Back</a>
            </h2>         
        </div>
    </div>

    <div class="panel-body">
        <form action="add.php" method="post" class="col-md-4 col-md-offset-4">
            <div class="form-group">
                <label for="name">Student Name</label>
                <input type="text" name="name" id="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="name">Roll No</label>
                <input type="text" name="roll" id="roll" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="submit" name="submit" value="Submit" class="btn btn-primary" required>
            </div>
        </form>
    </div>
</div>