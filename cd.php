<?php
  session_start();
  $cd_isbn = $_GET['cdisbn'];
  // connecto database
  require_once "./functions/database_functions.php";
  $conn = db_connect();

  $query = "SELECT * FROM cd WHERE cd_isbn = '$cd_isbn'";
  $result = mysqli_query($conn, $query);
  if(!$result){
    echo "Can't retrieve data " . mysqli_error($conn);
    exit;
  }

  $row = mysqli_fetch_assoc($result);
  if(!$row){
    echo "Empty dvd";
    exit;
  }

  $title = $row['cd_album'];
  require "./template/header.php";
?>

      <!-- Example row of columns -->
      <p class="lead" style="margin: 25px 0"><a href="cds.php">CD</a> > <?php echo $row['cd_album']; ?></p>
      <div class="row">
        <div class="col-md-3 text-center">
          <img class="img-responsive img-thumbnail" src="./img/<?php echo $row['cd_image']; ?>">
        </div>
        <div class="col-md-6">
          <span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
          <h4>Book Description</h4>
          <p><?php echo $row['cd_descr']; ?></p>
          <h4>Book Details</h4>
          <table class="table">
          	<?php foreach($row as $key => $value){
              if($key == "cd_descr" || $key == "cd_image" || $key == "publisherid" || $key == "cd_title"){
                continue;
              }
              switch($key){
                case "cd_isbn":
                  $key = "ISBN";
                  break;
                case "cd_title":
                  $key = "Title";
                  break;
                case "releasedate":
                  $key = "Release Date";
                  break;
                case "cd_price":
                  $key = "Price";
                  break;
              }
            ?>
            <tr>
              <td><?php echo $key; ?></td>
              <td><?php echo $value; ?></td>
            </tr>
            <?php 
              } 
              if(isset($conn)) {mysqli_close($conn); }
            ?>
          </table>
          <form method="post" action="cart.php">
            <input type="hidden" name="dvdisbn" value="<?php echo $dvd_isbn;?>">
            <input type="submit" value="Purchase / Add to cart" name="cart" class="btn btn-primary">
          </form>
       	</div>
      </div>
<?php
  require "./template/footer.php";
?>