<?php

require 'vendor/autoload.php';

use Google\Cloud\Dialogflow\V2\SessionsClient;
use Google\Cloud\Dialogflow\V2\TextInput;
use Google\Cloud\Dialogflow\V2\QueryInput;

function isSubmit($submit){

    if(isset($_POST[$submit]))
      return $_POST[$submit];
  
    if(isset($_GET[$submit]))
      return $_GET[$submit];
  
    return header('Location: ./');
}

function setSearch($question = ""){
	echo '<div class="row">
      <div class="col-md-6 mx-auto">
        <a class="text-decoration-none text-white" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">  
          <span class="badge rounded-pill chip bg-dark">?</span>
        </a>
        <h1 class="display-3 fw-light">
          <a class="text-decoration-none" href="./">Linkys</a>
        </h1>
        <form class="form-horizontal lead py-2 mb-3" id="search" method="post" action="search.php">
          <input type="text" class="form-control border border-secondary rounded-pill lead" id="q" name="q" value="'.$question.'" placeholder="¿Qué recomendación necesitas?">
        </form>
      </div>
    </div>';
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

function detectIntent($text, $languageCode = 'es'){

	global $category, $parameter, $fulfilmentText;

	try {
		$key = array('credentials' => 'recomend2me-xpoa-6a455c902e27.json');
    	$sessionsClient = new SessionsClient($key);
		$sessionsClient = new SessionsClient($key);
		$session = $sessionsClient->sessionName('recomend2me-xpoa', 'fb3f043d-2f76-b3da-c8af-24a646a232c5' ?: uniqid());
		// Crear entrada de texto
		$textInput = new TextInput();
		$textInput->setText($text);
		$textInput->setLanguageCode($languageCode);
	
		// Crear la entrada de la consulta
		$queryInput = new QueryInput();
		$queryInput->setText($textInput);
	
		$response = $sessionsClient->detectIntent($session, $queryInput);
		$queryResult = $response->getQueryResult();
	
		$parameter = $queryResult->getParameters();
		$jsonString = json_decode($parameter->serializeToJsonString(),true);

		if (array_key_exists('objeto', $jsonString)) {
			$parameter = $jsonString["objeto"];
		}else{
			$parameter = "";
		}
	
		$intent = $queryResult->getIntent();
		$category = $intent->getDisplayName();
		$fulfilmentText = $queryResult->getFulfillmentText();
	
		$sessionsClient->close();
	} catch (Exception $e) {
		echo $e;
		$sessionsClient->close();
		return 'FAILED';
	}

	return 'SUCCESS';
}

function getAddOn($fecha){
	//obtener la hora en formato unix
	$ahora=time();
	
	//obtener la diferencia de segundos
	$segundos=$ahora-$fecha;
	
	//dias es la division de n segs entre 86400 segundos que representa un dia;
	$dias=floor($segundos/86400);

	//mod_hora es el sobrante, en horas, de la division de días;	
	$mod_hora=$segundos%86400;
	
	//hora es la division entre el sobrante de horas y 3600 segundos que representa una hora;
	$horas=floor($mod_hora/3600);
	
	//mod_minuto es el sobrante, en minutos, de la division de horas;	
	$mod_minuto=$mod_hora%3600;
	
	//minuto es la division entre el sobrante y 60 segundos que representa un minuto;
	$minutos=floor($mod_minuto/60);

 	
	if($horas<=0){
		return 'Hace '.$minutos.' minutos';
	}elseif($dias<=0){
		return 'Hace '.$horas.' horas';
	}elseif($dias > 1){
		return 'Hace '.$dias.' días';
  }else{
    return 'Hace '.$dias.' día';
  }

}

?>