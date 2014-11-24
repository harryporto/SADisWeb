<html>
<head>
	<meta charset="utf-8" />
	<title>SADis - Acompanhar Solicitação</title>
	<link rel="stylesheet" href="css/960_24_col.css" type='text/css'/> <!-- Grid 960 -->
	<link rel="stylesheet" href="css/jquery.dataTables.css" type='text/css'/> <!-- Grid 960 -->
	<link rel="stylesheet" href="css/style.css" type='text/css' /> 
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'><!-- GoogleFonts -->
</head>

<body>
	<div class="background">
		<div class="container_24">
			<div class="grid_4 suffix_13">
				<div class="logo">
					<a href="index.html"><img src="logo_SADis_menor.png"></a>
				</div>
			</div>

			<div class="grid_24">
				<div class="background_transparente">    
					<div class="id_aba_ativa">
						Acompanhar Solicitação
					</div>

					<div class="clearfix"></div> 
					<div class="background_conteudo">
						<div class="background_conteudo">
							<h2> Status da Solicitação: <br>
							<?php 
							  $data = json_decode(str_replace("'", '"', $_POST['jsonData']), true)["data"];
							  for($i = 0; $i < sizeof($data); $i++){
							    if ($data[$i]["date"] != ""){
							      echo "Data: ";
    							  echo $data[$i]["date"];
    							  echo "</br>Status: ";
    							  echo utf8_decode($data[$i]["status"]);
    							  echo "</br>Mensagem: ";
    							  echo utf8_decode($data[$i]["message"]);
    							  echo "</br>";
    							}
    							// If got error message
    							else{
    							  echo "</br>";
    							  echo utf8_decode($data[$i]["status"]);
    							  echo "</br>";
    							}
							  }
							?>
							</h2></br>
							<a href="index.html">Retornar a página principal</a>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>  
	</div>           
</body>

</html>
