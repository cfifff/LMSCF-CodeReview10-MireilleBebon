<?php
  session_start();
  $count = 0;
  // connecto database
  
  $title = "Index";
  require_once "./template/header.php";
  require_once "./functions/database_functions.php";
  $conn = db_connect();
  $row = select4LatestBook($conn);
  $row1 = select4LatestDvd($conn);
  $row2 = select4LatestCd($conn);
?>
      <!-- Example row of columns -->
      <p class="lead text-center text-muted">Latest books</p>
      <div class="row">
        <?php foreach($row as $book) { ?>
        <div class="col-md-3">
          <a href="book.php?bookisbn=<?php echo $book['book_isbn']; ?>">
           <img class="img-responsive img-thumbnail" src="./img/<?php echo $book['book_image']; ?>">
          </a>
        </div>
        <?php } ?>
      </div>

      <p class="lead text-center text-muted">Latest DVD</p>
        <div class="row1">
        <?php foreach($row1 as $dvd) { ?>
        <div class="col-md-3">
          <a href="dvd.php?dvdisbn=<?php echo $dvd['dvd_isbn']; ?>">
           <img class="img-responsive img-thumbnail" src="./img/<?php echo $dvd['dvd_image']; ?>">
          </a>
        </div>
        <?php } ?>
      </div>

      <p class="lead text-center text-muted">Latest CD</p>
        <div class="row2">
        <?php foreach($row2 as $cd) { ?>
        <div class="col-md-3">
          <a href="cd.php?cdisbn=<?php echo $cd['cd_isbn']; ?>">
           <img class="img-responsive img-thumbnail" src="./img/<?php echo $cd['cd_image']; ?>">
          </a>
        </div>
        <?php } ?>
      </div>

<?php
  if(isset($conn)) {mysqli_close($conn);}
  require_once "./template/footer.php";
?>