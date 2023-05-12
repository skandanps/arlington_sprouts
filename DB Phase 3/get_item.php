<?php

$user = 'root';
$pass = 'password';
$db = 'arlington_sprouts_schema';

$conn = new mysqli('localhost',$user,$pass,$db) or die("not connected");
if($conn)
    $query = "SELECT * FROM `ITEM`;";
    $result = mysqli_query($conn,$query);
    $states = mysqli_fetch_all($result,MYSQLI_ASSOC);
    // echo $states;

?>

<!DOCTYPE html>
<html>

    <head><title>Arlington Sprouts Schema - fetch</title>
  
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
  </head>
    
    <style>
#cust {
  font-family: 'Montserrat', sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#cust td, #cust th {
  border: 1px solid black;
  padding: 8px;
}

#cust tr:nth-child(even){background-color: #f2f2f2;}

#custtr:hover {background-color:  #3385ff;}

#cust th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color:  green;
  color: white;
}
</style>
    <body>
    <table id="cust">
    <tr>
    <th>Id</th>
    <th> Name</th> 
    <th>Price</th>
  </tr>
        <tr>
        <?php foreach($states as $state){?>
        <td><?php echo htmlspecialchars($state['iId']); ?></td>
        <td><?php echo htmlspecialchars($state['Iname']); ?></td>
        <td><?php echo "$".htmlspecialchars($state['Sprice']); ?></td>

        </tr>
        <?php } ?>
        </table>
        
    </body>
</html>