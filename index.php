<?php
require('config.php');
require('functions.php');
require('header.php');

?>

<main class="container">

<section class="py-3 text-center">
    <div class="row">
      <div class="col-md-7 mx-auto">
        <h1 class="display-2 fw-light text-white">
          <a class="text-decoration-none" href="./">Linkys</a>
        </h1>
        <form class="form-horizontal lead py-3" id="search" method="post" action="search.php">
          <input type="text" class="form-control form-control-lg border border-secondary rounded-pill lead" id="q" name="q" placeholder="¿Qué recomendación necesitas?">
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

    <span class="badge rounded-pill bg-primary"><a class="text-decoration-none text-white" href="#">Últimas recomendaciones</a></span>

    <div class="list-group w-auto py-2" style="border-radius: 25px;">
      <a href="https://open-bootcamp.com/" class="list-group-item list-group-item-action d-flex gap-3 py-3" aria-current="true">
        <img src="https://community.open-bootcamp.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2FLogo_ob.88b52998.svg&w=128&q=75" alt="twbs" width="64" height="64" class="rounded-circle flex-shrink-0">
        <div class="d-flex gap-2 w-100 justify-content-between">
          <div>
            <h6 class="mb-0">OpenBootcamp</h6>
            <p class="mb-0 opacity-75">Aprende y Encuentra empleo GRATIS</p>
            <p class="mb-0 small">Recomendado por OpenBootcamp</p>
            <p class="mb-0 small">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#dc3545" class="bi bi-heart-fill" viewBox="0 0 16 16">
                  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                </svg> 21600
                </p>
          </div>
          <small class="opacity-50 text-nowrap">Cursos</small>
        </div>
      </a>
    </div>


    </div>
  </div>
</section>


</main>

<?php require('footer.php'); ?>