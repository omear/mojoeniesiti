<?php
require_once("../scripts/config.php");
		require_once("../scripts/functions.php");
		if(connection());

                    $countries = MysqlSelectQuery("select * from countries order by countries asc");



					$total_item = NUM_ROWS($countries);



					$colSize = 65;



		 			$column = 0; // init a column counter				



					for($count=0; $count < $total_item; $count++) {



					$rows = SqlArrays($countries);



    				$isStartOfNewColum = 0 === ($count % $colSize); // modulo



    				$isEndOfColumn = ($count && $isStartOfNewColum);



    				$isStartOfNewColum && $column++; // update column counter





					if ($isEndOfColumn) {

		

       					 echo "</ul></div>";

   					 }



					  if ($isStartOfNewColum) {



       					 echo'<div class="link_box">



						 <ul>';



    					}



						$strip = str_replace(" / ","-",$rows['countries']);



						$final = str_replace(" ","-",$strip);



						$num = MysqlSelectQuery("select event_id from events where country='".$rows['id']."' and status = 1");



						$totalCat = NUM_ROWS($num);



						echo '<li><a href="'.SITE_URL.'events/countries/'.$rows['id'].'/'.$final.'">'.$rows['countries'].'</a></li>';	

				

						}



    					echo "</ul></div>";



					?>