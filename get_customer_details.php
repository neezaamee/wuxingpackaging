<?php
include "connection.php";

if (isset($_GET['customer_id'])) {
    $customer_id = $_GET['customer_id'];

    $sql = "SELECT * FROM customers WHERE id = ?";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("i", $customer_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<li class='list-group-item'><b>First Name:</b> {$row['firstname']}</li>";
            echo "<li class='list-group-item'><b>Last Name:</b> {$row['lastname']}</li>";
            echo "<li class='list-group-item'><b>Email:</b> {$row['email']}</li>";
            echo "<li class='list-group-item'><b>Phone:</b> {$row['phone']}</li>";
            echo "<li class='list-group-item'><b>Address1:</b> {$row['address1']}</li>";
            echo "<li class='list-group-item'><b>Address2:</b> {$row['address2']}</li>";
        }
    } else {
        echo "<li class='list-group-item'>No details found for this customer.</li>";
    }

    $stmt->close();
}

$con->close();
