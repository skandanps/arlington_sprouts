<?php



$item_id = $_POST['iid'];
$iname = $_POST['iname'];

$user = 'root';
$pass = 'password';
$db = 'arlington_sprouts_schema';

$conn = new mysqli('localhost', $user, $pass, $db) or die("not connected");


if ($conn) {
    $data = "UPDATE ITEM set Iname = '$iname' where iid = $item_id";
    $result = mysqli_query($conn, $data);
    echo "{\"success\":true}";
} else {
    echo "{\"success\":false}";
}



?>