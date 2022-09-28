<?php

function isSubmit($submit){

    if(isset($_POST[$submit]))
      return $_POST[$submit];
  
    if(isset($_GET[$submit]))
      return $_GET[$submit];
  
    return header('Location: ./');
}


function getInfo($question, $con){

    global $command, $search;

    $question = strtolower($question); //-ga esta es mi busqueda
    $question = stripslashes($question);
    $question = mysqli_real_escape_string($con,$question);

    $command = explode(":", $question); //[-ga] [esta]

    if (sizeof($command) >= 2){
        $search = explode($command[0].":", $question); // [esta es mi busqueda]    
    }

}

?>