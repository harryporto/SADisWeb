﻿﻿<head>
<title>SADis - Sistema de Aproveitamento de Disciplinas</title>
<meta charset="utf-8" />
<title></title>
<link rel="stylesheet" href="../../css/960_24_col.css" type='text/css'/> <!-- Grid 960 -->
<link rel="stylesheet" href="../../css/jquery.dataTables.css" type='text/css'/> <!-- Grid 960 -->
<link rel="stylesheet" href="../../css/style.css" type='text/css' /> 
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'><!-- GoogleFonts -->
<script src="../../js/jquery-1.10.2.min.js"></script>
<script src="../../js/jquery.dataTables.js"></script>
<script language="javascript">
	$(document).ready(function() {
		$('#solicitacoes').dataTable();
	} );
</script>
</head>
<?php
	// Nome: index.php
	// Mostra todas as Solicitações 
	session_start();
	error_reporting(0);
	if (!isset($_SESSION["acesso"])){
		header("location: ..\login.php");
	
	}
	//auditoria starts
	require "../db.php";
	$rotina = "AcessarSolicitacoes";
	$nivel = $_SESSION["nivel"];
	$usuario = $_SESSION["usuario"];
	$query = "SELECT count(*) FROM direitos WHERE DsIdeRotina = '$rotina' AND Niveis_CdIdeNivel = '$nivel' AND ConsIdeRot = 1";
	$rs = mysql_query($query);
	$row = mysql_fetch_row($rs);
	
	if ( $row[0] > 0 ) { // nivel pode ver a pagina
		$query = "SELECT CdIdeUsu from usuarios where NmIdeUsu = '$usuario'";
		$rs = mysql_query($query);
		$row = mysql_fetch_row($rs);
		$idUsuario = $row[0];
		require "../pegarIp.php";
		$query = "INSERT into auditoria ( Niveis_CdIdeNivel, Usuarios_CdIdeUsu, DsIdeAudit , IpAudit ) 
					VALUES ( '$nivel' , '$idUsuario', '$rotina' , '$ip' ) ";					
		$rs = mysql_query($query);
	//auditoria ends
	
		

	$rs = mysql_query("select * from solicitacoes");
	$linhas = mysql_num_rows($rs);


	$html = null;

	for($i=0;$i<$linhas;$i++){
		$idFacul = utf8_encode(mysql_result($rs,$i,'FACULDADES_CdIdeFacul'));
		$result = mysql_query("SELECT CdIdeFacul, NmIdeFacul from faculdades where CdIdeFacul = ".$idFacul."");
		while($row = mysql_fetch_array($result)){
			$nmFaculdade = utf8_encode($row["NmIdeFacul"]);
		}
		
		$iDcurso = utf8_encode(mysql_result($rs,$i,'CURSOS_CdIdeCurso'));
		$result = mysql_query("SELECT CdIdeCur, NmIdeCur from cursos where CdIdeCur  = ".$iDcurso."");
		while($row = mysql_fetch_array($result)){
			$nmCurso = utf8_encode($row["NmIdeCur"]);
		}
		$abertura = utf8_encode(mysql_result($rs,$i,'Abertura'));
		$abertura = date_create($abertura);
		
		$html .=  '<tr>
				<td>' .	utf8_encode(mysql_result($rs,$i,'NmIdeAluno')) . '</td>
				<td>' .	$nmCurso . '</td>
				<td>' .	$nmFaculdade . '</td>
				<td>' . utf8_encode(mysql_result($rs,$i,'MatIdeAluno')) . '</td>
				<td><a href=uploads/' . utf8_encode(mysql_result($rs,$i,'CompAluno')) . '><button class="butt butt-rc butt-shadow butt-primary">+</button></a></td>
				<td>' . utf8_encode(mysql_result($rs,$i,'StatusSolic')) . '</td>
				<td>' . utf8_encode(mysql_result($rs,$i,'CodSolic')) . '</td>
				<td>' . date_format($abertura, 'd/m/Y H:i') . '</td>


			</tr>';
	}
?>
<body>
	<div class="background">
		<div class="container_24">
			<div class="grid_4 suffix_13">
				<div class="logo">
					<a href="../index.php"><img src="../../img/logo_SADis_menor.png"></a>
				</div>
			</div>
			<div class="grid_7">
				<div class="id_usuario">
					<a style="margin-left:15px;" href="../login.php" class="right">Sair</a>
					<h1 class="right">Usuário Administrador  </h1>
				</div>
			</div>
			<div class="grid_24">
				<div class="background_transparente">    
					<div class="id_aba_ativa">
						Solicitações
					</div>
			
					<div class="clearfix"></div> 
					<div class="background_conteudo">
						<table id="solicitacoes" class="display" cellspacing="0" width="100%">
						<thead>
							<tr>							
								<td><h2>Nome </h2></td>
								<td><h2>Curso Solicitado </h2></td>
								<td><h2>Faculdade Atual</h2></td>
								<td><h2>Matrícula </h2></td>
								<td><h2>Comprovante</h2></td>
								<td><h2>Status da Solicitação</h2></td>
								<td><h2>Código </h2></td>
								<td><h2>Abertura </h2></td>																													
														
							</tr>  
						</thead>	
						<tbody>
							<?php echo $html; ?>
						</tbody>	
						
						</table>	
<br>
<a href="../index.php"><button class="butt butt-rc butt-shadow butt-primary">voltar</button></a>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>  
	</div>      
</body>
<?php }

else {
header("location: ../acessonegado.php");
}
?>