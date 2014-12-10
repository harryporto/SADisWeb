<?php 

  header('Content-Type: aplication/json; charset=utf-8');
  
  require "db.php";

  if (isset($_GET['CodSolic'])){
    $codigo = mysql_real_escape_string($_GET['CodSolic']);

    $result = mysql_query("SELECT StatusSolic FROM solicitacoes WHERE CodSolic =".$codigo.";");
    if ($result){
    }
  }  
    
  if (!isset($codigo) || !isset($jsonArray) || sizeof($jsonArray) == 0){
    $jsonArray['data'][] = array(
      "date"    => "",
      "status"  => utf8_encode("Solicitação não encontrada!"),
      "message" => ""
    );
  }
  
  echo json_encode($jsonArray);
?>
