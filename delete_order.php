<?php
include "connection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $order_id = $_POST['order_id'];
    $status_id = 10;

    $sql = "UPDATE orders SET status = ? WHERE id = ?";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("ii", $status_id, $order_id);

    if ($stmt->execute()) {
        header("Location: viewOrders.php");
    } else {
        echo "Error updating record: " . $con->error;
    }

    $stmt->close();
    $con->close();
}
?>
