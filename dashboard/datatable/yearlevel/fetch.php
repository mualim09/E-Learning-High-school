<?php
require_once('../class.function.php');
$yearlevel = new DTFunction();  		 // Create new connection by passing in your configuration array


$query = '';
$output = array();
$query .= "SELECT 
* ";
$query .= "FROM `ref_year_level` ";
if(isset($_POST["search"]["value"]))
{
 $query .= 'WHERE yl_ID LIKE "%'.$_POST["search"]["value"].'%" ';
    $query .= 'OR yl_Name LIKE "%'.$_POST["search"]["value"].'%" ';
}


if(isset($_POST["order"]))
{
	$query .= 'ORDER BY '.$_POST['order']['0']['column'].' '.$_POST['order']['0']['dir'].' ';
}
else
{
	$query .= 'ORDER BY yl_ID DESC ';
}
if($_POST["length"] != -1)
{
	$query .= 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}
$statement = $yearlevel->runQuery($query);
$statement->execute();
$result = $statement->fetchAll();
$data = array();
$filtered_rows = $statement->rowCount();
foreach($result as $row)
{
	

	$sub_array = array();
	
		
		$sub_array[] = $row["yl_ID"];
		$sub_array[] =  $row["yl_Name"];
		$sub_array[] = '
		<div class="btn-group">
		  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Action
		  </button>
		  <div class="dropdown-menu">
		    <a class="dropdown-item view"  id="'.$row["yl_ID"].'">View</a>
		    <a class="dropdown-item edit"  id="'.$row["yl_ID"].'">Edit</a>
		   
		  </div>
		</div>';
		  // <div class="dropdown-divider"></div>
		  //   <a class="dropdown-item delete" id="'.$row["yl_ID"].'">Delete</a>
	$data[] = $sub_array;
}

$q = "SELECT * FROM `ref_year_level`";
$filtered_rec = $yearlevel->get_total_all_records($q);

$output = array(
	"draw"				=>	intval($_POST["draw"]),
	"recordsTotal"		=> 	$filtered_rows,
	"recordsFiltered"	=>	$filtered_rec,
	"data"				=>	$data
);
echo json_encode($output);



?>



        
