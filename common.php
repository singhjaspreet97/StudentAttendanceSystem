<?php 
    
    $username = "root"; 
    $password = ""; 
    $host = "localhost"; 
    $dbname = "abcd"; 

    
    $options = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8');
     
   
    try 
    { 
        
        $db = new PDO("mysql:host={$host};dbname={$dbname};charset=utf8", $username, $password, $options); 
    } 
    catch(PDOException $ex) 
    { 
        
        die("Failed to connect to the database: " . $ex->getMessage());
    } 
    
   
    session_start(); 

