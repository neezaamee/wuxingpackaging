<?php
include "connection.php";

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

// Retrieve POST data
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$address1 = $_POST['address1'];
$address2 = $_POST['address2'];
$state_id = $_POST['state'];
$zipcode = $_POST['zipcode'];
$additional_details = $_POST['additional-details'];
$cart = json_decode($_POST['cart'], true);
$subtotal = $_POST['subtotal'];
$shipping_fee = $_POST['shipping_fee'];
$total = $_POST['total'];

// Log the received data to a file for testing
/* $logData = "Received Data:\n";
$logData .= "First Name: $firstname\n";
$logData .= "Last Name: $lastname\n";
$logData .= "Email: $email\n";
$logData .= "Phone: $phone\n";
$logData .= "Address 1: $address1\n";
$logData .= "Address 2: $address2\n";
$logData .= "State ID: $state_id\n";
$logData .= "Zipcode: $zipcode\n";
$logData .= "Additional Details: $additional_details\n";
$logData .= "Subtotal: $subtotal\n";
$logData .= "Shipping Fee: $shipping_fee\n";
$logData .= "Total: $total\n";
$logData .= "Cart Items:\n" . print_r($cart, true) . "\n\n";

// Append data to the log file
$logFile = 'checkout_log.txt';
file_put_contents($logFile, $logData, FILE_APPEND); */
$discount = 0;
// Insert order into orders table
$sql_customer = "INSERT INTO customers (firstname, lastname, email, phone, address1, address2, idstate, zipcode)
        VALUES ('$firstname', '$lastname', '$email', '$phone', '$address1', '$address2', '$state_id', '$zipcode')";

if ($con->query($sql_customer) === TRUE) {
    $customer_id = $con->insert_id;
    $sql_order = "INSERT INTO orders (idcustomer, subtotal, shippingfee, discount, grandtotal, note) VALUES ('$customer_id', '$subtotal', '$shipping_fee', '$discount', '$total', '$additional_details')";
    if($con->query($sql_order) === TRUE){
        $order_id = $con->insert_id;
        // Insert order items into order_items table
        foreach ($cart as $item) {
            $product_id = $item['id'];
            $quantity = $item['quantity'];
            $price = $item['price'];
    
            $sql_item = "INSERT INTO orderitemsdetail (idorder, idproduct, quantity, price)
                         VALUES ('$order_id', '$product_id', '$quantity', '$price')";
    
            $con->query($sql_item);
        }
    }

    echo "Order placed successfully!";
} else {
    echo "Error: " . $sql . "<br>" . $con->error;
}

// Close connection
$con->close();
