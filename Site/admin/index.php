<head>
	<meta charset="utf-8" />
	<title>SADis - Sistema de Aproveitamento de Disciplinas</title>
	<link rel="stylesheet" href="../css/960_24_col.css" type='text/css'/> <!-- Grid 960 -->
	<link rel="stylesheet" href="../css/jquery.dataTables.css" type='text/css'/> <!-- Grid 960 -->
	<link rel="stylesheet" href="../css/style.css" type='text/css' /> 
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'><!-- GoogleFonts -->
</head>
<?php 
	session_start();
	if (!isset($_SESSION["acesso"])){
		header("location: login.php");
		
	}
	else{
		include ("db.php");
		$usuario = $_SESSION["usuario"];
		$sql = "SELECT CdIdeUsu FROM usuarios where NmIdeUsu = '$usuario' ";
		$result = mysql_query($sql);
		while($row = mysql_fetch_array($result)){
			$CdIdeUsu = $row['CdIdeUsu'];
		}
?>
<body>
	<div class="background">
		<div class="container_24">
			<div class="grid_4 suffix_13">
				<div class="logo">
					<a href="../index.html"><img src="../logo_SADis_menor.png"></a>
				</div>
			</div>
			<div class="grid_7">
				<div class="id_usuario">
					<a style="margin-left:15px;" href="login.php" class="right">Sair</a>
					<h1 class="right">Usuário Administrador  </h1>
				</div>
			</div>
			<div class="grid_24">
				<div class="background_transparente">    		
					<div class="clearfix"></div> 
						<div class="grid_18 prefix_6"> 
								<div class="grid_17 prefix_6" style="margin-center:100px"><h1 >Painel de Controle</h1></div>	
								<br>
								<div class="grid_21 prefix_3">
								<div class="grid_6"><td><a href="usuarios/index.php"> <br><br><button class="but but-rc but-primary but-shadow"> Usuários</button></a></td></div>
								<div class="grid_6 prefix_2"><td><a href="solicitacoes/index.php"><br><br> <button class="but but-primary but-rc but-shadow">Solicitações </button></a></td></div>

								</div>	
								</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>  
	</div> 
</body>	
<?php } ?>