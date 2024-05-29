<?php
require_once "connection.php";
//require_once "sessionSet.php";
?>
<?php
date_default_timezone_set("Asia/Karachi");
function isAdmin()
{
    if (
        isset($_SESSION["officeID"]) &&
        officeByID($_SESSION["officeID"])->idofficetype == 0
    ) {
        return true;
    } else {
        return false;
    }
}
function isReaderCTO()
{
    if (
        isset($_SESSION["officeID"]) &&
        ($_SESSION["officeID"] == 25 &&
            officeByID($_SESSION["officeID"])->idofficetype == 2)
    ) {
        return true;
    } else {
        return false;
    }
}

function productByID($productID)
{
    global $con;
    $sql = "SELECT * FROM products WHERE id = '$productID'";
    $Result = mysqli_query($con, $sql);
    $Product = mysqli_fetch_object($Result);
    return $Product;
}
function subCategoryByID($categoryID)
{
    global $con;
    $sql = "SELECT * FROM subcategory WHERE id = '$categoryID'";
    $Result = mysqli_query($con, $sql);
    $Category = mysqli_fetch_object($Result);
    return $Category;
}

function sectorByID($ID)
{
    global $con;
    $Q = "SELECT * FROM sectors WHERE id = '$ID'";
    $QR = mysqli_query($con, $Q);
    $Sector = mysqli_fetch_object($QR);
    return $Sector;
}
function officeByID($ID)
{
    global $con;
    $Q = "SELECT * FROM offices WHERE id = '$ID'";
    $QR = mysqli_query($con, $Q);
    $Office = mysqli_fetch_object($QR);
    return $Office;
}
function officeTypesByID($ID)
{
    global $con;
    $Q = "SELECT * FROM officetypes WHERE id = '$ID'";
    $QR = mysqli_query($con, $Q);
    $officeType = mysqli_fetch_object($QR);
    return $officeType;
}
function vehicleByID($ID)
{
    global $con;
    $Q = "SELECT * FROM vehicle_types WHERE id = '$ID'";
    $QR = mysqli_query($con, $Q);
    $Vehicle = mysqli_fetch_object($QR);
    return $Vehicle;
}
function violationByID($ID)
{
    global $con;
    $Q = "SELECT * FROM violation_codes WHERE id = '$ID'";
    $QR = mysqli_query($con, $Q);
    $Violation = mysqli_fetch_object($QR);
    return $Violation;
}
function candidateByToken($Token, $Date)
{
    global $con;
    $sql = "SELECT * FROM candidates WHERE token='$Token' AND DATE(entrydate)='$Date'";
    $Result = mysqli_query($con, $sql);
    $Candidate = mysqli_fetch_object($Result);
    return $Candidate;
}
function duplicateTestToday($candidateID, $Date)
{
    global $con;
    $sql = "SELECT * FROM tests WHERE candidateid='$candidateID' AND DATE(testdate)='$Date'";
    $Result = mysqli_query($con, $sql);
    $numRows = mysqli_num_rows($Result);
    return $numRows;
}
function addChallan(
    $violationCode,
    $vehicleType,
    $vehicleNo,
    $Sector,
    $Fine,
    $violationDate,
    $Name,
    $GuardianName,
    $CNIC,
    $Phone
) {
    global $con;
    $sql = "INSERT INTO challans(violation_code,vehicle_type,vehicle_no,sector,fine,violation_date,name,guardian_name,cnic,contact) VALUES('$violationCode','$vehicleType','$vehicleNo','$Sector','$Fine','$violationDate','$Name','$GuardianName','$CNIC','$Phone')";
    $Result = mysqli_query($con, $sql);
    if ($Result) {
        return true;
    } else {
        return false;
    }
}
function addLifterChallan(
    $officerName,
    $officerBelt,
    $bookNo,
    $ticketNo,
    $violationDate,
    $violatorName,
    $CNIC,
    $Phone,
    $Fine,
    $vehicleType,
    $vehicleNo,
    $userID,
    $status
) {
    global $con;
    $sql = "INSERT INTO lifter_challans(name, beltno, bookno, ticketno, challan_date, violator_name, violator_cnic, violator_phone, fine_amount, vehicle_type, vehicle_no, idoffice, added_by, id_status)
    VALUES('$officerName','$officerBelt','$bookNo','$ticketNo','$violationDate','$violatorName','$CNIC','$Phone','$Fine', '$vehicleType', '$vehicleNo', 00, '$userID', 1)";
    $Result = mysqli_query($con, $sql);
    if ($Result) {
        return true;
    } else {
        return false;
    }
}
function addCandidate(
    $candidateToken,
    $candidateCNIC,
    $candidateName,
    $candidateFatherName,
    $candidatePhone,
    $candidateAddress,
    $candidateLPNo,
    $candidateLPDate,
    $candidateLicenseCategory,
    $candidateTicketCost,
    $specialCase,
    $isCommercial,
    $lpcBy
) {
    global $con;
    $sql = "INSERT INTO candidates($violationCode,$vehicleType,$vehicleNo,$Sector,$Fine,$violationDate,$Name,$GuardianName,$CNIC) VALUES('$candidateToken','$candidateCNIC','$candidateName','$candidateFatherName','$candidatePhone','$candidateAddress','$candidateLPNo','$candidateLPDate','$candidateLicenseCategory','$candidateTicketCost','$specialCase','$isCommercial','$lpcBy')";
    $Result = mysqli_query($con, $sql);
    if ($Result) {
        return true;
    } else {
        return false;
    }
}
 ?>
