<?php
include 'init.php';
$qr = "SELECT county,count(1) as number FROM kfs_report GROUP BY county";
			$run = mysqli_query($con,$qr);

			if(mysqli_num_rows($run)>0){
			echo '<div class="tablee">';
			if($run){
				@$output .= '
					<table border="1">
						<tr>
							<th>County</th>
							<th>Number of cases</th>
						</tr>
					';
				while($row = mysqli_fetch_assoc($run)){
					$output .= '
					<tr>
						<td>'.$row["county"].'</td>
				    	<td>'.$row['number'].'</td>
				    </tr>
					';
				}
				$output .='</table>';

		header("Content-Type: application/xls");
		header("Content-Disposition: attachment; filename=download.xls");
				
				echo $output;
			}
		}



?>