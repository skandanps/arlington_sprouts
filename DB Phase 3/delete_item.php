<?php



$item_id = $_POST['iid'];


$user = 'root';
$pass = 'password';
$db = 'arlington_sprouts_schema';

$conn = new mysqli('localhost', $user, $pass, $db) or die("not connected");


if ($conn) {
    $data = "DELETE FROM ITEM  where iid = $item_id";
    $result = mysqli_query($conn, $data);
    echo "{\"success\":true}";
} else {
    echo "{\"success\":false}";
}



?>