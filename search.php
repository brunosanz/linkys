<?php
require('config.php');
require('header.php'); 
include ('conexion.php');
include ('functions.php');

$question = isSubmit('q');
getInfo($question, $con);

?>


<main class="container">

<section class="py-3 text-center container">
    <div class="row">
      <div class="col-md-7 mx-auto">
        <h1 class="display-2 fw-light text-white">
          <a class="text-decoration-none" href="./">Linkys</a>
        </h1>
        <form class="form-horizontal lead py-3" id="search" method="post" action="search.php">
          <input type="text" class="form-control form-control-lg border border-secondary rounded-pill lead" id="q" name="q" value="<?php echo $question; ?>" placeholder="¿Qué recomendación necesitas?">
          <small class="text-start opacity-50 text-white small">
            Escribir comando ( ob: javascript ) ó categoría ( cursos: ).
            <a class="text-decoration-none" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">Ayuda</a>
          </small>
        </form>
      </div>
    </div>
</section>

<section>
  <div class="row">
    <div class="col-md-7 mx-auto">

<?php

switch(true){

  case ( sizeof($command) >= 2 && !empty($command[0])):
    $sql= "select * from search where shortcut LIKE '%".$command[0]."%';";
    $con->query("SET NAMES 'utf8'");
    $query = $con->query($sql);
    if($query->num_rows != 0){
      while($r=$query->fetch_array()){
        $link = str_replace("%search", trim($search[1]), $r["url_search"]);
        header('Location: '.$link.'');
      }
    }else{

      $sql= "select * from search where category LIKE '%".$command[0]."%' and status < 4 order by status_like desc, name asc limit 7;";
      $con->query("SET NAMES 'utf8'");
      $query = $con->query($sql);
      if($query->num_rows != 0){

        echo '<span class="badge rounded-pill bg-primary">
                <a class="text-decoration-none text-white" href="#">';
        if(!empty($search[1]) && $search[1] != " "){
          print 'Sitios recomendados para realizar tu búsqueda.';
        }else{
          print 'Sitios recomendados:';
        }

        echo '</a></span>';
        while($r=$query->fetch_array()){

          if(!empty($search[1]) && $search[1] != " "){
            $link = str_replace("%search", trim($search[1]), $r["url_search"]);
          }else{
            $link = $r["url"];
          }

          echo '<div class="list-group w-auto py-2" style="border-radius: 25px;">
          <a href="'.$link.'" class="list-group-item list-group-item-action d-flex gap-3 py-3" aria-current="true">
            <img src="'.$r["url_image"].'" alt="twbs" width="64" height="64" class="rounded-circle flex-shrink-0">
            <div class="d-flex gap-2 w-100 justify-content-between">
              <div>
                <h6 class="mb-0">'.$r["name"].'</h6>
                <p class="mb-0 opacity-75">'.$r["description"].'</p>
                <p class="mb-0 small">
                  Recomendado por '.$r["recommended_by"].'
                </p>';
                if ($r["status_like"] > 0){
                  echo '<p class="mb-0 small">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#dc3545" class="bi bi-heart-fill" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                  </svg> '.$r["status_like"].'
                  </p>';
                }
              echo '</div>
              <small class="opacity-50 text-nowrap">'.substr($r["added_on"],1,10).'</small>
            </div>
          </a>
        </div>';
        }
      }else{

        echo '<div class="alert alert-danger" role="alert" style="border-radius: 25px;">
        El comando o categoría <strong>'.$command[0].'</strong> no existe. Puede ver una lista de comandos y categorías <a href="#" class="alert-link" data-bs-toggle="modal" data-bs-target="#exampleModal">aquí</a>.
      </div>';
      }
      
    }
    break;

  default:
    header('Location: https://www.google.com/search?q='.$question.'');
    break;


}

?>

    </div>
  </div>

</section>




</main>

<?php require('footer.php'); ?>