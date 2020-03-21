<?php
  session_start();
  $dvd_isbn = $_GET['dvdisbn'];
  // connecto database
  require_once "./functions/database_functions.php";
  $conn = db_connect();

  $query = "SELECT * FROM dvd WHERE dvd_isbn = '$dvd_isbn'";
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

  $title = $row['dvd_title'];
  require "./template/header.php";
?>

      <!-- Example row of columns -->
      <p class="lead" style="margin: 25px 0"><a href="dvds.php">DVD</a> > <?php echo $row['dvd_title']; ?></p>
      <div class="row">
        <div class="col-md-3 text-center">
          <img class="img-responsive img-thumbnail" src="./img/<?php echo $row['dvd_image']; ?>">
        </div>
        <div class="col-md-6">
          <span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
          <h4>Book Description</h4>
          <p><?php echo $row['dvd_descr']; ?></p>
          <h4>Book Details</h4>
          <table class="table">
          	<?php foreach($row as $key => $value){
              if($key == "dvd_descr" || $key == "dvd_image" || $key == "publisherid" || $key == "dvd_title"){
                continue;
              }
              switch($key){
                case "dvd_isbn":
                  $key = "ISBN";
                  break;
                case "dvd_title":
                  $key = "Title";
                  break;
                case "releasedate":
                  $key = "Release Date";
                  break;
                case "dvd_price":
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