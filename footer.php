        <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ayuda para utilizar Linkys</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h5>Linkys</h5>
        <p>Te recomienda sitios web para obtener mejores resultados a tus búsquedas. Si deseas recomendar un sitio mandame un mensaje en <a class="text-decoration-none" href="http://m.me/rbrunosanz">Messenger</a>.</p>
        <hr>
        <h5>Cómo usarlo</h5>
        <p>Puedes utilizarlo de 3 maneras:</p>
        <ul>
            <li>Comandos -> <strong>ob: javascript </strong></li>
            <li>Categorías -> <strong>descargar imagenes </strong></li>
            <li>Búsqueda libre -> <strong> cursos para aprender javascript </strong></li>
        </ul>
        <p>En comandos terminar con <strong>dos puntos (:). </strong></p>
        <p>Al utilizar un comando la búsqueda se realizará en el sitio ligado a ese comando.</p>
        <p>En categorías mostrará todos los sitios web relacionados, por ejemplo con <strong>descargar imagenes</strong> los resultados serán sitios web sobre imágenes.</p>
        <p>La búsqueda libre se realizará en el sitio con más recomendación que tenga, ejemplo <strong>cursos para aprender javascript</strong> mandará a la página de <strong>OpenBootcamp</strong> buscando algún curso de JavaScript.</p>
        <hr>
        <h5>Comandos</h5>
        <ul>
          <?php
            $sql= "select name, shortcut from search;";
            $con->query("SET NAMES 'utf8'");
            $query = $con->query($sql);
            if($query->num_rows != 0){
              while($r=$query->fetch_array()){
                echo '<li>'.$r["name"].' - <strong>'.$r["shortcut"].':</strong></li>';
              }
            }
          ?>
        </ul>
        <hr>
        <h5>Categorías</h5>
        <ul>
          <?php
              $sql= "select category from search group by category;";
              $con->query("SET NAMES 'utf8'");
              $query = $con->query($sql);
              if($query->num_rows != 0){
                while($r=$query->fetch_array()){
                  echo '<li><strong>'.$r["category"].'</strong></li>';
                }
              }
            ?>
        </ul>
      </div>
    </div>
  </div>
</div>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js"></script>
    </body>
</html>