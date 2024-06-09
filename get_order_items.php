<?php
include "connection.php";

if (isset($_GET['order_id'])) {
    $order_id = $_GET['order_id'];

    $sql = "SELECT * FROM orderitemsdetail WHERE idorder = ?";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("i", $order_id);
    $stmt->execute();
    $result = $stmt->get_result();



    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            //fetching product name
            $productID = $row["idproduct"];
            $productQ = "SELECT * FROM products WHERE id = '$productID'";
            $productRow = $con->query($productQ)->fetch_assoc();
            $productName = $productRow['name'];
            echo "<li class='list-group-item'><b>Product Name:</b> <br>{$productName} <br><b>Quantity:</b><br> {$row['quantity']}</li>";
        }
    } else {
        echo "<li class='list-group-item'>No items found for this order.</li>";
    }

    $stmt->close();
}

$con->close();