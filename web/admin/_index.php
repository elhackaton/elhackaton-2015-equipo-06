<?php
		include('conectarse.php');
		/*Escribirmos la consulta y la insertamos en una variable parseada con el formato que le estamos dando con la funcion sprintf*/
		$sql1 = "SELECT * FROM dispositivos WHERE Id_Dispositivo='1'";
		/*Ejecutamos la consulta y guardamos el resultado en la variable*/
		$result1=mysql_query($sql1);
		if(mysql_num_rows($result1)){
			$array1=mysql_fetch_array($result1);
		}
		
		$sql2 = "SELECT * FROM lecturas WHERE Id_Dispositivo='1' ORDER BY Consumo ASC LIMIT 1";
		/*Ejecutamos la consulta y guardamos el resultado en la variable*/
		$result2=mysql_query($sql2);
		if(mysql_num_rows($result2)){
			$array2=mysql_fetch_array($result2);
		}
		
		$sql3 = "SELECT * FROM lecturas WHERE Id_Dispositivo='1' ORDER BY Consumo DESC LIMIT 1";
		/*Ejecutamos la consulta y guardamos el resultado en la variable*/
		$result3=mysql_query($sql3);
		if(mysql_num_rows($result3)){
			$array3=mysql_fetch_array($result3);
		}
		
		$sql4 = "SELECT AVG (Consumo) FROM lecturas WHERE Id_Dispositivo='1'";
		/*Ejecutamos la consulta y guardamos el resultado en la variable*/
		$result4=mysql_query($sql4);
		if(mysql_num_rows($result4)){
			$array4=mysql_fetch_array($result4);
		}
		
		$num4 = bcadd($array4[0],'0',2);
		
		$sql5 = "SELECT Consumo FROM lecturas WHERE Id_Dispositivo='1' ORDER BY FechaHora DESC LIMIT 1";
		/*Ejecutamos la consulta y guardamos el resultado en la variable*/
		$result5=mysql_query($sql5);
		if(mysql_num_rows($result5)){
			$array5=mysql_fetch_array($result5);
		}
		
		$longitud = 1;

		
echo'<div id="content">';
				
	for($i=0; $i<$longitud; $i++)
	{
		echo '	<div id="seccion">
					<div id="dispositivo">
						<div id="titulo_dispositivo">Bombilla</div>
						<div id="img_dispositivo"></div>
						<div id="alta_dispositivo"><strong>Fecha</strong> </br> ';print_r($array1['FechaAlta']);echo'H</div>
						<div id="consumo_dispo_f"><strong>Consumo</strong> </br> ';print_r($array1['ConsumoEstimado']);echo'W</div>
					</div>
					<div id="informacion">
						<div id="info">
							<div id="titulo_info">Consumo Minimo</div>
							<div id="dato">';print_r($array2['Consumo']*0.1);echo'W</div>
						</div>
						<div id="info">
							<div id="titulo_info">Consumo Maximo</div>
							<div id="dato">';print_r($array3['Consumo']*0.1);echo'W</div>
						</div>
						<div id="info">
							<div id="titulo_info">Consumo Medio</div>
							<div id="dato">';print_r($num4*0.1);echo'W</div>
						</div>
						<div id="info">
							<div id="titulo_info">Ultima lectura</div>
							<div id="dato">';print_r($array5['Consumo']*0.1);echo'W</div>
						</div>
					</div>
				</div>
		';
	}		
			
echo'</div>
';
?>