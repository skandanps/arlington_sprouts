<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');

$user = 'root';
$pass = 'password';
$db = 'arlington_sprouts_schema';

$conn = new mysqli('localhost',$user,$pass,$db) or die("not connected");
if($conn)
    $query = "SELECT * FROM `ITEM` where iid = ".$_GET['iid'];
    $result = mysqli_query($conn,$query);
    $records = mysqli_fetch_all($result,MYSQLI_ASSOC);
    echo "{\"item\":[";
    foreach($records as $record){
        echo "{\"iid\":".$record["iId"].",\"iname\":\"".$record["Iname"]."\",\"sprice\":".$record["Sprice"]."}";
    }
    echo "]}";


?>

