<?php 

include_once 'db.class.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Infinite Scroll</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  
</head>
<body>

<div class="container">
  <br />
  <h1>Infinite Scroll</h1>
  <br />
  <div id="news_area">
  <?php
  
  $sql = "select * from news order by news_id desc limit 7";
  $query = $db->query($sql);

  while($row = $query->fetch(PDO::FETCH_OBJ)){
  ?>
  <div class="alert alert-danger well well-lg " news_id="<?php echo $row->news_id;?>"><?php echo $row->news;?></div>
  <?php
  }
  ?>
  </div>
  <div id="notif"></div>

  
</div>
  <script src="js/jquery-1.11.2.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>

<script>
$(document).ready(function() {
	
	$(window).data('scroll_progress', true).scroll(function(e) {
		
	   if ($(window).data('scroll_progress') == false) return;
		
	   if($(window).scrollTop() + $(window).height() == $(document).height()) {
		   
		   var check_end = $("#notif div" ).attr('id');
		   
		   if(check_end != 'end'){
			   
		   $( "#notif" ).html('<div class="alert alert-info" role="alert" style="text-align:center">Loading news...</div>');
			   
		   var last_news_id = $("#news_area div:last-child" ).attr('news_id');
		   var dataString = { send : true , last_news_id : last_news_id };
		
			
					$(window).data('scroll_progress', false);
					$.ajax({
		
						type: "POST",
						url: "loading_news.php",
						data: dataString,
						dataType: "json",
						cache : false,
						success: function(data){
							
							$(window).data('scroll_progress', true);
							
							if(data.end == false){
				
								if(last_news_id  != data.last_news_id){
									$( "#news_area").append(data.news);
									$( "#notif" ).html('');
								}
							
							} else {
								$( "#notif" ).html('<div id="end" class="alert alert-success" role="alert" style="text-align:center">All news loaded</div>');
							}
				  
						} ,error: function(xhr, status, error) {
							alert(error);
						},
					});
					
		   }
		   
	   }
	});
});
</script>