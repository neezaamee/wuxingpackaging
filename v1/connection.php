<?php
/*$con = mysqli_connect('localhost','root','','cod_ctpfsd');
if(!$con)
{
	echo "Db Connection Error ".mysqli_error($con) ;
}
else
{
	echo "";
}*/


$con = mysqli_connect('localhost','wadhuaum_nizami','Xomt[OX!^~Q)','wadhuaum_wuxingpackaging');
if(!$con)
{
	echo "Db Connection Error ".mysqli_error($con) ;
}
else
{
	echo "";
}

function CleanData($Data)
{
	$Data = addslashes($Data);
	$Data = trim($Data);
	$Data = stripslashes($Data);
	return $Data;
}
?>