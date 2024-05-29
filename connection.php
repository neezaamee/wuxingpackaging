<?php
//OOP method to connect database

// local database connection
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'wuxingpackaging';

$con = new mysqli($host, $username, $password, $database);

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

// wuxingpackaging server database connection
/* $host = 'localhost';
$username = 'wadhuaum_nizami';
$password = 'Xomt[OX!^~Q)';
$database = 'wadhuaum_wuxingpackaging';
$con = new mysqli($host, $username, $password, $database);

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
 */


//old method to connect database
/* $con = mysqli_connect("localhost", "root", "", "wuxingpackaging");
if (!$con) {
    echo "Db Connection Error " . mysqli_error($con);
} else {
    echo "";
} */

/* $con = mysqli_connect('localhost','wadhuaum_nizami','Xomt[OX!^~Q)','wadhuaum_wuxingpackaging');
if(!$con)
{
	echo "Db Connection Error ".mysqli_error($con) ;
}
else
{
	echo "";
} */

//Function for cleaning data before inserting into database
function CleanData($Data)
{
    global $con;
    //Returns a string with backslashes added before characters that need to be escaped.
    $Data = addslashes($Data);
    //Remove leading / trailing spaces
    $Data = trim($Data);
    //Remove backslashes
    $Data = stripslashes($Data);
    $Data = $con->real_escape_string($Data);
    return $Data;
}
