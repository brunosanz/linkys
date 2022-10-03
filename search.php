<?php
require('config.php');
require('header.php'); 
include ('conexion.php');
include ('functions.php');

$question = isSubmit('q');
getInfo($question, $con);

?>


<main class="container">

<section class="text-center bg-light sticky-top pb-0 mb-0">
  <?php echo setSearch($question); ?>
</section>

<section>

<?php

  switch(true){

    case ( sizeof($command) >= 2 && !empty($command[0])):
      $sql= "select * from search where shortcut = '".$command[0]."';";
      $con->query("SET NAMES 'utf8'");
      $query = $con->query($sql);
      if($query->num_rows != 0){
        while($r=$query->fetch_array()){
          $link = str_replace("%search", trim($search[1]), $r["url_search"]);
          header('Location: '.$link.'');
        }
      }else{
        echo '<div class="alert alert-danger" role="alert" style="border-radius: 25px;">
        El comando <strong>'.$command[0].'</strong> no existe. Puede ver una lista de los disponibles <a href="#" class="alert-link" data-bs-toggle="modal" data-bs-target="#exampleModal">aquí</a>.
        </div>';
      }
    break;

    default:

      if(detectIntent($question) == 'FAILED'){
        echo '<div class="alert alert-danger" role="alert" style="border-radius: 25px;">
                Por el momento Linky está dormido =).
              </div>';
      }else{

        if($category == 'Default Welcome Intent'){
          echo '<div class="alert alert-info" role="alert" style="border-radius: 25px;">'.$fulfilmentText.'</div>';
        }if($category == 'Default Fallback Intent'){
          echo '<div class="alert alert-info" role="alert" style="border-radius: 25px;">'.$fulfilmentText.' Puedes realizar tu búsqueda en <a href="https://www.google.com/search?q='.$question.'" class="alert-link">Google dando click aquí</a></div>';
        }else{
          if (isset($parameter) && $parameter != "") {
            $var = $parameter;
            $sql= "select * from search where category LIKE '%$category%' and status < 4 order by status_like desc limit 1;";
            $redirect = true;
          }else{
            $var = "";
            $sql= "select * from search where category LIKE '%$category%' and status < 4 order by status_like desc, name asc limit 30;";
            $redirect = false;
          }

          $con->query("SET NAMES 'utf8'");
          $query = $con->query($sql);
          if($query->num_rows != 0){
            echo '<span class="badge rounded-pill bg-primary">
                  <a class="text-decoration-none text-white" href="#">
                  Sitios recomendados por la comunidad.';
            echo '</a></span>';
            echo '</div>';
            echo '<div class="py-2"></div>';
            echo '<div class="row" data-masonry=\'{"percentPosition": true }\'>';

            while($r=$query->fetch_array()){

              $link = str_replace("%search", $var, $r["url_search"]);

              if($redirect){
                header('Location: '.$link.'');
              }else{
                echo '<div class="col-sm-6 col-lg-3 mb-3 grid-item">

                  <div class="card" style="border-radius: 25px;">
                    <div class="card-body">
                      <span class="badge rounded-pill chip" style="color: white; background-color: rgba(0, 0, 0, 1); webkit-backdrop-filter: saturate(180%) blur(10px); backdrop-filter: saturate(180%) blur(10px);">
                        '.$r["category"].'
                      </span>
                      <a class="text-decoration-none" href="https://twitter.com/'.$r["recommended_by"].'" target="_blank">
                        <div class="recomended">
                          <img class="avatar" src="'.$r["user_avatar"].'" width="36" height="36" />
                        </div>
                        <div class="user-name mb-0">'.$r["recommended_by"].'</div>
                        <div class="date"> Hace 1 día</div>
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
            }//Fin while
          }
        }
      }

    break;


  } //Fin switch

?>

  </div>

</section>

</main>

<?php require('footer.php'); ?>