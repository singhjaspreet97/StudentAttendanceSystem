<?php

include("header.php");
include("db.php");

?> 

<div class="container">
    <div class="panel panel-default">
        <div class=" panel panel-heading">
            <h2>
                <a class="btn btn-success" href="add.php">Add Student</a>
                <a class="btn btn-info pull-right" href="index.php">Back</a>
            </h2>
    
            <div class="panel panel-body">
                
                    <table class="table table-striped">
                        <tr>
                        <th>Serial Number</th><th>Dates</th><th>Show Attendance</th>
                        </tr>
                        <?php
                            $query = "SELECT distinct date FROM attendence_records";
                            $result = mysqli_query($conn, $query);
                            $serialnumber=0;
                            $counter=0;
                            while($row=mysqli_fetch_array($result))
                            {
                                $serialnumber++;         // for index
                            ?>
                            <tr>
                            <td> <?php echo $serialnumber; ?> </td>
                            <td> <?php echo $row['date']; ?> 
                            </td>
                            <td>
                            <form action="show_attendence.php" method="post">
                                <input type="hidden" value="<?php echo $row['date'] ?>" name="date">
                                <input type="submit" class="btn btn-primary" value="Show Attandence">
                            </form>
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
              <!--      <input type="submit" name="submit" value="Submit" class="btn btn-primary"> -->
                
            </div>        
        </div>
    </div> 
</div>
