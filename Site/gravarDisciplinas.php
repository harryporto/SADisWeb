<?php	
	// Arquivo: gravarDisciplinas.php
	// Grava as disciplinas cursadas pelo aluno na tabela
	
	$contador  = count($_POST['nomeDisciplina']);
	
	for($i=0; $i < $contador; $i++)
	{
		$sql = "INSERT INTO r_alunos_disciplinas 
							(ALUNOS_CdIdeAlu, NmIdeDisciplina , CodDisciplina , EmentaDisciplina , CargaHorariaDisciplina ) 
							VALUES 
							(  
								'" . $indAluno . "' ,
								'" . $_POST['nomeDisciplina'][$i] . "' , '" . $_POST['codigoDisciplina'][$i] . "',
								'". $_POST['ementaDisciplina'][$i] ."' , 	 '" . $_POST['cargaHorariaDisciplina'][$i] . "'															
							) "	;				
							
		$rs = mysql_query($sql);

	}
	
	
?>	