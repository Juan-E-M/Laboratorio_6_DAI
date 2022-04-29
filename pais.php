<?php
include "conexion.php "; //nombre de tu conexion

	if(!$conexion){
		echo"Error en la conexion con el servidor";
	}

	$consulta = "SELECT * FROM paises";
	$ejecutarConsulta = mysqli_query($conexion, $consulta);

	echo'<select id="country" name="country" >';
		while ($fila = mysqli_fetch_array($ejecutarConsulta)) {
			if($fila['id']==$_GET['c']){
				echo"<option value='".$fila['id']."'>".$fila['nombre']."</option>";
			}
		}
	echo'</select>';

?>