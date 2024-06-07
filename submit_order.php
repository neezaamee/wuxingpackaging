<?php
// submit_order.php

header('Content-Type: application/json');

include "connection.php";

// Create connection
//$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($con->connect_error) {
    die(json_encode(['success' => false, 'message' => 'Database connection failed: ' . $con->connect_error]));
}

// Get the data from the POST request
$data = json_decode(file_get_contents('php://input'), true);

echo $first_name = $con->real_escape_string($data['first_name']);
/* $last_name = $conn->real_escape_string($data['last_name']);
$email = $conn->real_escape_string($data['email']);
$mobile_no = $conn->real_escape_string($data['mobile_no']);
$address1 = $conn->real_escape_string($data['address1']);
$address2 = $conn->real_escape_string($data['address2']);
$state = $conn->real_escape_string($data['state']);
$zip_code = $conn->real_escape_string($data['zip_code']);
$note = $conn->real_escape_string($data['note']);
$shipping_fee = $conn->real_escape_string($data['shipping_fee']);
$subtotal = $conn->real_escape_string($data['subtotal']);
$total = $conn->real_escape_string($data['total']); */

// Insert the order details into the database
$sql = "INSERT INTO orders (first_name, last_name, email, mobile_no, address1, address2, state, zip_code, note, shipping_fee, subtotal, total)
        VALUES ('$first_name', '$last_name', '$email', '$mobile_no', '$address1', '$address2', '$state', '$zip_code', '$note', '$shipping_fee', '$subtotal', '$total')";

if ($con->query($sql) === TRUE) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'message' => 'Error: ' . $sql . '<br>' . $con->error]);
}

$conn->close();