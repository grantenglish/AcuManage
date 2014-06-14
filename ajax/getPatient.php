<?php
//
// get all the treatments
//
require_once '../includes/db.php'; // The mysql database connection script
$status = '%';
if(isset($_GET['id'])){
$status = $_GET['status'];
}

$query="select p.id,p.practitionerId,c.* from patient p,contact c where p.contactId = c.id and p.id = id;";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $arr[] = $row;
  }
}

# JSON-encode the response
$json_response = json_encode($arr);
echo $json_response = json_encode($arr);

// debug show the row count
//echo 'document.write("<p> some '. $result->num_rows .'more</p>");';

?>
