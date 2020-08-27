<?php

include("header.php");
include("db.php");


?> 

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2>
                <a class="btn btn-success" href="add.php">Add Student</a>
                <a class="btn btn-info pull-right" href="index.php">Back</a>
            </h2>
             
            <div class="panel panel-body">
                <form action="index.php" method="post">
                    <table class="table table-striped">
                        <tr>
                        <th>Serial Number</th><th>Student Name</th><th>Roll Number</th><th>Attendence Status</th>
                        </tr>
                        <?php
                            $query = "SELECT  distinct * FROM attendence_records WHERE date='$_POST[date]'";
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
                            </td>
                            <td> <?php echo $row['roll_number']; ?>        
                            </td>
                            <td>
                                <input type="radio" name="attendence_status[<?php echo $counter; ?>]" 
                                <?php if($row['attendence_status']=="Present")
                                    echo "checked=checked";
                                    ?>
                                value="Present"> Present
                                <input type="radio" name="attendence_status[<?php echo $counter; ?>]" 
                                <?php if($row['attendence_status']=="Absent")
                                    echo "checked=checked";
                                    ?>
                                value="Absent"> Absent
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
                   <!-- <input type="submit" name="submit" value="Submit" class="btn btn-primary"> -->
                </form>
            </div>        
        </div>
    </div> 
</div>