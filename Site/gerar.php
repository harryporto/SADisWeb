<html>
<head>
	<meta charset="utf-8" />
	<title>SADis - Envio Concluído</title>
	<link rel="stylesheet" href="css/960_24_col.css" type='text/css'/> <!-- Grid 960 -->
	<link rel="stylesheet" href="css/jquery.dataTables.css" type='text/css'/> <!-- Grid 960 -->
	<link rel="stylesheet" href="css/style.css" type='text/css' /> 
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'><!-- GoogleFonts -->
</head>
<?php 

	require_once("db.php");
	$codigo = $_POST['codigo'];
	$nome = $_POST['nome'];
	$email = $_POST['email'];
	$matricula = $_POST['matricula'];
	$telefone = $_POST["telefone"];
	//$nmFaculdade = $_POST[" "];
	//$nmCurso = $_POST[" "];


	$uploadtemp = 'admin/solicitacoes/uploads_temp/';
	$uploaddir = 'admin/solicitacoes/uploads/';

 if (isset($_POST["files"])){
    $files = unserialize($_POST["files"]);

    foreach ($files as $file){
      if (file_exists($uploadtemp.$file)){
        //move_uploaded_file($uploadtemp.$file, $uploaddir.$file); // Nao funciona
        copy($uploadtemp.$file, $uploaddir.$file);
        unlink($uploadtemp.$file);
      }
    }
  }
	
?>


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
						Envio Concluído
					</div>

					<div class="clearfix"></div> 
					<div class="background_conteudo">
						<h2> Solicitação enviada com sucesso!</h2></br>
						<h2> Código da Solicitação para acompanhamento: <?php echo $codigo;?></h2></br>
<?php 
	
	
	$mensagem = "<html>
	<table width='510' border='1' cellpadding='1' cellspacing='1' bgcolor='#CCCCCC'>
    <tr>
        <td>
			    <tr>
                     <td width='500'>Foi aberta uma solicitação de aproveitamento de disciplinas em seu colegiado </td>
              </tr>
             
              	 <tr>
                      <td width='320'>Nome:$nome</td>
    	         </tr>
             
              <tr>
                      <td width='320'>Matricula:$matricula</td>
    	        </tr>
                
                 <tr>
                      <td width='320'>Telefone:$telefone</td>
    	        </tr>
                
                 <tr>
                      <td width='320'>Email:$email</td>
    	        </tr>
    				
                <tr>
                      <td width='320'>Código de Acompanhamento:<b>$codigo</b></td>
              </tr>
               
               <tr>
                      <td width='320'>Faculdade de Origem:</td>
    	       </tr>
               
               <tr>
                      <td width='320'>Curso Solicitado:</td>
    	       </tr>
                <tr>
                      <td width='320'>Nível:</td>
    	        </tr>
                      
        </td>
    </tr>  
  </table>
</html>
	";

	$emailenviar = $email;
	$destino = $email;
	$assunto = "Abertura de solicitação de aprveitamento de disciplina";

	// É necessário indicar que o formato do e-mail é html
	$headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
    $headers .= 'From: Sadis<Sadis@sadisweb.br>';
	

	$enviaremail = mail($destino, $assunto, $mensagem, $headers);
	if($enviaremail){
		echo "<h2>Um email foi enviado com o número da solicitação para acompanhamento do processo.</h2>";
	} else {
		echo "<h2>Houve uma falha no envio do email de confirmação</h2>";
	}
	?>

						<a href="index.html"><button class="butn butn-rc butn-shadow butn-primary">Retornar a página principal</button></a>


						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>  
	</div>           
</body>


</html>
