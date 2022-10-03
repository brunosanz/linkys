<?php
require('config.php');
include ('conexion.php');
require('functions.php');
require('header.php');

?>

<main class="container">

<section class="text-center bg-light sticky-top pb-0 mb-0">
    <?php echo setSearch(); ?>
</section>

<section>

  <div class="row">
    <div class="col-md-4">
      <span class="badge rounded-pill bg-primary">Últimas recomendaciones de la comunidad</span>
    </div>
  </div>

  <div class="py-2"></div>

  <div class="row" data-masonry='{"percentPosition": true }'>

  <?php
  $sql= "select *, UNIX_TIMESTAMP(added_on) as added_on from search where status < 4 order by added_on desc limit 10;";
  $con->query("SET NAMES 'utf8'");
  $query = $con->query($sql);
  if($query->num_rows != 0){
        while($r=$query->fetch_array()){
          $added_on = getAddOn($r["added_on"]);

          echo '<div class="col-sm-6 col-lg-3 mb-3 grid-item">

          <div class="card" style="border-radius: 25px;">
            <div class="card-body">
              <span class="badge rounded-pill chip bg-dark">
                '.$r["category"].'
              </span>
              <a class="text-decoration-none" href="https://twitter.com/'.$r["recommended_by"].'" target="_blank">
                <div class="recomended">
                  <img class="avatar" src="'.$r["user_avatar"].'" width="36" height="36" />
                </div>
                <div class="user-name mb-0">'.$r["recommended_by"].'</div>
                <div class="date"> '.$added_on.'</div>
              </a>
              
              <h5 class="mb-0 my-2">
                <a class="text-decoration-none" href="'.$r["url"].'">'.$r["name"].'</a>
              </h5>
              <p class="opacity-75 small">'.$r["description"].'</p>

              <img class="card-img-top img-rounded img-fluid" src="'.$r["url_image"].'" />

              <p class="card-text my-2">
                <span class="float-start">
                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#dc3545" class="bi bi-heart-fill" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                  </svg> '.$r["status_like"].'
                </span>
              </p>

            </div>
          </div>
          
        </div>';
  }
}

?>

  </div>
</section>


</main>

<?php require('footer.php'); ?>