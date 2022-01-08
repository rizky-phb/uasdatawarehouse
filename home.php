<?php
include('config.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>gh</title>
</head>
<body>
    
<h2 class="ui header"></h2>
	<table class="ui celled collapsing table">
		<thead>
			<tr>
				<th>no</th>
				<th>ammount</th>
				<th>sk_product</th>
				<th>sk_payment</th>
				<th>sk_office</th>
			</tr>
		</thead>
		<tbody>
			<?php
            $host = 'localhost';
            $username = 'root';
            $password = '';
            $database = 'dataware';
        
            $koneksi = mysqli_connect($host,$username,$password);
                include('config.php');
				$query  = "SELECT * FROM fakta"
				$result = mysqli_query($koneksi, $query);

				$i = 0;
				while ($row = mysqli_fetch_array($result)) {
					$i++;
				?>
				<tr>
					<?php if ($i == 1) {
						echo "<td><div class=\"ui ribbon label\"></div></td>";
					} else {
						echo "<td>".$i."</td>";
					}

					?>

					<td><?php echo $row['id	'] ?></td>
					<td><?php echo $row['ammout'] ?></td>
					<td><?php echo $row['sk_product'] ?></td>
					<td><?php echo $row['sk_payment'] ?></td>
					<td><?php echo $row['sk_office'] ?></td>
				</tr>

				<?php	
				}
			?>
		</tbody>
	</table>


    </body>
</html>