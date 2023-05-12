<?php



$item_id = $_POST['iId'];
$iname = $_POST['Iname'];
$sprice = $_POST['Sprice'];

$user = 'root';
$pass = 'password';
$db = 'arlington_sprouts_schema';

$conn = new mysqli('localhost', $user, $pass, $db) or die("not connected");


if ($conn) {
    $data = "Insert into ITEM  values('$item_id','$iname', '$sprice')";
    $result = mysqli_query($conn, $data);
    echo "Item Details are Inserted Successfully <a href='/'>Go back </a>";
} else {
    echo "No data ";
}



?>