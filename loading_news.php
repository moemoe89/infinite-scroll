<?php 

include_once 'db.class.php';


  
  $sql = "select * from news where news_id < '".$_POST['last_news_id']."' order by news_id desc limit 5";
  $check = $db->query($sql);
  $result = $check->fetch(PDO::FETCH_OBJ);
  
  $arr =  array();
  
  if($result){
	  
	  $arr['news'] = '';
	  $last_news_id = '';
	  
	  $query = $db->query($sql);
	  while($row = $query->fetch(PDO::FETCH_OBJ)){

	  $arr['news'] .= '<div class="alert-danger well well-lg" news_id="'.$row->news_id.'">'.$row->news.'</div>';
	  $last_news_id = $row->news_id;
	  
	  }
	  
	  $arr['last_news_id'] = $last_news_id; 
	  $arr['end'] = false;
  
  } else {
	  $arr['end'] = true;
  }
  
  echo json_encode($arr);
  
?>
