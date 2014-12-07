<html>
<head>
	<meta charset="utf-8" />
	<title>SADis - Solicitar Aproveitamento</title>
	<link rel="stylesheet" href="css/960_24_col.css" type='text/css'/> <!-- Grid 960 -->
	<link rel="stylesheet" href="css/style.css" type='text/css' /> 
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'><!-- GoogleFonts -->
	<script src="js/jquery-1.10.2.min.js"></script>
</head>


<script>
	$(document).ready(function() {
		var max_fields      = 10; 
		var wrapper         = $(".input_fields_wrap"); 
		var add_button      = $(".add_field_button"); 
	   
		var x = 1;

		$(wrapper).on("click",".remove_field", function(e){ 
			e.preventDefault(); 
			var it = $(this).parent('div').parent('div').children();
			it = it.first();
			for (i = 1; i <= parseInt($(this).parent('div').attr("value")); i++){
			  it = it.next();
			}
			for (i = parseInt($(this).parent('div').attr("value")); i < x; i++){
			  var prevVal = parseInt(it.attr("value"));
  			it.attr("value", prevVal-1);
  			it.find(".userfile").attr("name", "userfile"+(prevVal-1));
  			it = it.next();
			}
			$(this).parent('div').remove(); 
			x--;
			
			$(".hidden_size").attr("value", parseInt(x));
		})

		$(add_button).click(function(e){ 
			e.preventDefault();
			if(x < max_fields){ 
				x++; 
  			$(".hidden_size").attr("value", parseInt(x));

				$(wrapper).append('<div class="input_field" value="'+x+'">'
				+' Nome: <input type="text" name="mytext[]"/>'
				+' Código: <input type="text" name="mytext[]"/>'
				+' Carga Horária: <input type="text" name="mytext[]"/>'
				+' <a href="#" class="remove_field"><button class="rem_field_but">Remover Disciplina</button></a>'
				+' <br>'
			  +' <br>'
				+' <span class="comments">Observações: <textarea rows="6" cols="37" name="comment'+x+'"></textarea></span>'
				+' <span class="upload_area">Ementa: <input class="userfile" name="userfile'+x+'" type="file" /></span></div>'); 
			}
		});
	});


</script>


<?php 

	require_once("db.php");

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
						<font color="DC792F" size="3px"style="font-weight:bold;">Solicitar Aproveitamento</font>
					</div>

					<div class="clearfix"></div> 
					<div class="background_conteudo">
						<font color="#000" face="arial, verdana, helvetica"size="2px"style="font-weight:bold;">Atenção, todos os campos com (*) asterisco, devem ser preenchidos!</font><br><br>
						<form method="POST" action="confirmar.php" onsubmit="return validar(this);"  enctype="multipart/form-data">
							
							<fieldset>
								<legend> Dados Pessoais </legend>
							<font color="#000" face="arial, verdana, helvetica"size="2px">Nome Completo</font><font color="#FF0000">*</font><br><p>  
							<input maxlength="100" style="width:350px;" type="textfield" name="Nome" id="Nome"/> 					
							</br>	
							<br />
							
							<font color="#000" face="arial, verdana, helvetica"size="2px">Telefone</font><font color="#FF0000">*</font><br><p>
							<input maxlength="10" type="textfield" name="Telefone" id="Telefone"/> 
							</br>
							<br />
							
							<font color="#000" face="arial, verdana, helvetica"size="2px">E-mail</font><font color="#FF0000">*</font><br><p>
							<input maxlength="50" type="textfield" name="Email" id="Email"/> 
							</br>
							<br />
							
							<font color="#000" face="arial, verdana, helvetica"size="2px">Matrícula</font><font color="#FF0000">*</font><br><p>
							<input maxlength="10" type="textfield" name="Matricula" id="Matricula"/> 
							</br>
							<br />
							</fieldset><p>	
							<fieldset>
							<legend>Dados da Solicitação</legend>					
							
							<font color="#000" face="arial, verdana, helvetica"size="2px">Faculdade de Origem</font><font color="#FF0000">*</font><br><p>
							
							<select name="FACULDADE">
								<option value="0" > Selecione... </option>  
								<?php 
									$result = mysql_query("SELECT CdIdeFacul  , NmIdeFacul from faculdades  ");
									while($row = mysql_fetch_array($result))
									{ ?><option value="<?php echo utf8_encode($row['CdIdeFacul']);?>" > <?php echo utf8_encode($row['NmIdeFacul']);?> </option>             
								<?php
									}
								?>    
																						
							</select>
							
							</br>	
							<br />
							<font color="#000" face="arial, verdana, helvetica"size="2px">Curso Solicitado</font><font color="#FF0000">*</font><br><p>
							<select name="CURSO">
								<option value="0" > Selecione... </option>  
								<?php 
									$result = mysql_query("SELECT CdIdeCur, NmIdeCur from cursos  ");
									while($row = mysql_fetch_array($result))
									{ ?><option value="<?php echo utf8_encode($row['CdIdeCur']);?>" > <?php echo utf8_encode($row['NmIdeCur']);?> </option>             
								<?php
									}
								?>    
																						
							</select>

							</br>	
							<br />

							
								
								<font color="#000" face="arial, verdana, helvetica"size="2px">Nível</font><font color="#FF0000">*</font><br><p>
								<INPUT TYPE="radio" NAME="OPCAO" VALUE="op1"><font color="#000" face="arial"size="2px">Graduação</font>
								<INPUT TYPE="radio" NAME="OPCAO" VALUE="op2"><font color="#000" face="arial"size="2px">Pós-Graduação</font><p><p>
								
							
							
							<font color="#000" face="arial, verdana, helvetica"size="2px">Disciplinas Cursadas</font><font color="#FF0000">*</font>
							<button class="add_field_button"></button>
					

							<input type="hidden" class="hidden_size" name="num_files" value="1">
							<div class="input_fields_wrap">
              <div class="input_field" value="1">
								Nome: <input type="text" name="mytext[]">
								Código: <input type="text" name="mytext[]">
								<!--Ementa: <input type="text" name="mytext[]">!-->
								Carga Horária: <input type="text" name="mytext[]">
								<br>
								<br>
								<span class="comments">Observações: <textarea rows="6" cols="37" name="comment1"></textarea></span>
  							<span class="upload_area">Ementa: <input class="userfile" name="userfile1" type="file" /></span>
  						</div>
							</div>

							</br>	
							</fieldset>
							
							<br />
							
												
							<button class="but but-rc but-shadow but-primary" type="submit"  onClick="if (!validacao()) return false;">enviar</button>

						</form>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>  
	</div>           
</body>

<script type="text/javascript">
	$('#Telefone').keyup(filterDigits);
	$('#Matricula').keyup(filterDigits);	
	
	function filterDigits(){
		if (/\D/g.test(this.value)){
			// Filter non-digits from input value.
			this.value = this.value.replace(/\D/g, '');
		}
	}
	
	function validar(formulario) {

		if (
			(formulario.Nome.value.length == 0 ) || (formulario.Telefone.value.length == 0 ) ||
			(formulario.Email.value.length == 0 ) || (formulario.Matricula.value.length == 0 ) ||
			(formulario.FACULDADE.value == 0 ) || (formulario.CURSO.value == 0 ) 
			
			){
			alert("Por favor preencher todos os campos.");
			return false;
		}
		
		if (formulario.Telefone.value.length < 8){
			alert("Telefone inválido.");
			return false;							
		}		
		return true;
	}
</script>
