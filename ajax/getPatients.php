<?php
//
// get all the treatments
//
require_once '../includes/db.php'; // The mysql database connection script
$status = '%';
if(isset($_GET['status'])){
$status = $_GET['status'];
}

$mysqli = new mysqli("localhost", "root", "11246Albeth", "AcuManage");
$query="select p.id,p.practitionerId,c.* from patient p,contact c where p.contactId = c.id;";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $arr[] = $row;
  }
}

# JSON-encode the response
echo $json_response = json_encode($arr);
?>
