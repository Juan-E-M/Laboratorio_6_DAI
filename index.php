<?php
    include("conexion.php");
    $elementos = "select * from carousel";
    $elementos_1 = "select * from carousel_1";
    $elementos_2 = "select * from noticias";
    $elementos_3 = "select * from footer_contenido";

    $sql_video = "SELECT * FROM video";
    $res_video = mysqli_query($conexion , $sql_video);
    $sql_letrero = "SELECT * FROM letrero";
    $res_letrero = mysqli_query($conexion , $sql_letrero);
    $sql_img_left = "SELECT * FROM images";
    $res_img_left = mysqli_query($conexion , $sql_img_left);
    $sql_img_right = "SELECT * FROM images";
    $res_img_right = mysqli_query($conexion , $sql_img_right);

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Lab 02 - Team One</title>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Open+Sans&display=swap" rel="stylesheet"> 
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
	<link rel="stylesheet" href="Estilos/bloq.css">
</head>

<body>
  <div class="mosaico">
    <div id = "container">
        <section>
            <div class = "box-1">
                <img src ="Imagenes\Nintendo_logo_PNG6.png" width="180px" height="80px" class="logo_nintendo">
                    <div  class = "box-1-right" type="button">
                        <i class="fa-solid fa-user"></i>
                        <h1 style="font-size:23px">Iniciar sesión</h1>
                    </div>
            </div>  
            <img src="Imagenes\Wallpaper.png" width="85%" height="86%" class="first_background">
            <div class="singboard">     
            <h1><?php
                    while($filas = mysqli_fetch_array($res_letrero)){
                      echo $filas['letrero_titulo'];
                    }
                  ?></h1>    
                <img src="Imagenes\Letrero.png" width="550px" height="250px" class="Letrero">
            </div>

            <div class = "introduction">
                <img <?php
                      while($filas = mysqli_fetch_array($res_img_left)){
                        print_r($filas['image_left']);}
                  ?>
                   width="300px" height="380px" class="Tunel" id="Tunel">
                <div class="SSV">
                  <?php
                    while($filas = mysqli_fetch_array($res_video)){
                      print_r($filas['video']);
                    }
                  ?>
                </div>
                <img <?php
                      while($filas = mysqli_fetch_array($res_img_right)){
                        print_r($filas['image_right']);}
                  ?>
                   width="700px" height="740px" class="Mario" id="Mario">
            </div>
        </section>
    </div>
  </div>

  <div class="contenedor">
   		<div class="carousel">
  			<div class="carousel_contenedor1">
          <h2 class="center-align titulo" style="padding: 10px 0px 10px 15px;">
            ¡JUEGOS EXCELENTES!
          </h2>
          <button aria-label="Anterior" class="carousel__anterior"> <i class="fas fa-chevron-left"></i></button>
  				<div class="lista"> <!-- Ingreso de datos dinámicos  -->
            <?php
                $resultado = mysqli_query($conexion,$elementos);
                while($row=mysqli_fetch_assoc($resultado)) {
            ?>

  					<div class="carousel__elemento">
  						<img src="<?php echo $row["imagen"]?>" alt="">
                          <h3  class="juegos"><?php echo $row["juego"]?></h3>
                          <div class="linea-division"></div>
                          <p class="desc"><?php echo $row["precio"]?><br><?php echo $row["consola"]?></p>
  					</div>
            <?php } ?>
  				</div>
  				<button aria-label="Siguiente" class="carousel__siguiente"><i class="fas fa-chevron-right"></i></button>
  			</div>
  			<div role="tablist" class="carousel__indicadores"></div>
      </div>

  		<div class="carousel1">
  			<div class="carousel_contenedor1">
          <h2 class="consolas" >
            NUEVAS CONSOLAS
          </h2>
  				<div class="lista1"><!-- Ingreso de datos dinámicos  -->
          <!-- ----------------------------------------------------------------------------------------------------  -->
            <?php
                $resultado_1 = mysqli_query($conexion,$elementos_1);
                while($row=mysqli_fetch_assoc($resultado_1)) {
            ?>
  					<div class="carousel__elemento1">
  						<div class="img"><img src="<?php echo $row["imagen"]?>" alt=""></div>
              <div class="linea-division1"></div>
              <p class="desc"><?php echo $row["precio"]?><br><?php echo $row["consola"]?></p>
  					</div>
            <?php } ?>
          <!-- ----------------------------------------------------------------------------------------------------  -->
  				</div>
  			</div>
  			<div role="tablist" class="carousel__indicadores1"></div>
  		</div>      
  </div>

  <div style="display: flex;justify-content: center;">
    <div class="column middle" style=""> 
      <h1 id="h1">Novedades</h1> <!-- Ingreso de datos dinámicos  -->
        <!-- ----------------------------------------------------------------------------------------------------  -->
        <?php
                $resultado_2 = mysqli_query($conexion,$elementos_2);
                while($row=mysqli_fetch_assoc($resultado_2)) {
        ?>
        <div class="responsive">
          <div class="gallery">
            <a target= "blank" href="<?php echo $row["url_ref"]?>">
              <img src="Imagenes/<?php echo $row["imagen"]?>">
            </a>
            <div class="desc"><?php echo $row["descripcion"]?><br></br><a><strong>Leer más</strong></a></div>
          </div>
        </div>
        <?php } ?>
      <!-- ----------------------------------------------------------------------------------------------------  -->       
    </div>
  </div>
  

  <div class="bg-img" >
    <form action="" class="container">
      <h1 style="font-size:22.2px;">¡Dejanos tú opinión!</h1>
      <label for="name"><b>Nombre o Apodo</b></label>
      <input type="text"  name="name" required class="col-12 form-control"> 
      	<label for="name"><b>Continente</b></label>
            <select id="country" name="country" onclick="muestraselect(this.value)"> <!-- Ingreso de datos dinámicos  -->
              <!-- ----------------------------------------------------------------------------------------------------  -->
              <?php
                  include "conexion.php"; 
                  if(!$conexion ){
                    echo"Error en la conexion con el servidor";
                  }
                  $consulta = "SELECT * FROM continentes";
                  $ejecutarConsulta = mysqli_query($conexion , $consulta);
                  while($fila = mysqli_fetch_array($ejecutarConsulta)){
                    echo"<option value='".$fila['id']."'>".$fila['nombre']."</option>";
                  }
                ?> 
              <!-- ----------------------------------------------------------------------------------------------------  -->
            </select>
      	<label for="name"><b>País</b></label>
            <div id="div">
              <select id="country" name="country">

                <option value="">Seleccione</option>
              </select>
            </div>
        <label for="comentario"><b>Opinión</b></label>
        <input type="textarea" placeholder="Excelente!" name="comentario" required>
        <button type="submit" class="btn">Enviar</button>
    </form>
  </div>

  <div style="background:#202020;">
    <footer>
           
           <div class="contenedor-footer-all">
            
                <div class="contenedor-body"> <!-- Ingreso de datos dinámicos  -->
                <!-- ----------------------------------------------------------------------------------------------------  -->
                    <?php
                      $resultado_3 = mysqli_query($conexion,$elementos_3);
                      $resultado_4 = mysqli_query($conexion,$elementos_3);
                      $resultado_5 = mysqli_query($conexion,$elementos_3);
                      while($row=mysqli_fetch_assoc($resultado_3)) {
                        if ($row["columna"]=="Mas-informacion"){
                          echo "<div class='".$row["columna"]."'>";
                          echo "<h1>".$row["titulo"]."</h1>";
                          echo "<p>".$row["descripcion"]."</p></div>";               
                        };
                        if ($row["columna"]=="Redes-Sociales"){
                          $clase = $row["columna"];
                          $titulo = $row["titulo"];        
                        };
                        if ($row["columna"]=="Informacion-contacto"){
                          $clase1 = $row["columna"];
                          $titulo1 = $row["titulo"];        
                        };                        
                        };
                      echo "<div class='".$clase."'><h1>".$titulo."</h1>";
                      while ($row=mysqli_fetch_assoc($resultado_4)) {
                        if ($row["columna"]=="Redes-Sociales"){
                          echo "<div class='row'>";
                          echo "<img src='iconos/".$row["nombre_imagen"].".png'>";
                          echo "<label>".$row["descripcion"]."</label>";
                          echo "</div>";
                        };
                      }
                      echo "</div>";
                      echo "<div class='".$clase1."'><h1>".$titulo1."</h1>";
                      while ($row=mysqli_fetch_assoc($resultado_5)) {
                        if ($row["columna"]=="Informacion-contacto"){
                          echo "<div class='row2'>";
                          echo "<img src='iconos/".$row["nombre_imagen"].".png'>";
                          echo "<label>".$row["descripcion"]."</label>";
                          echo "</div>";
                        };
                      }
                      echo "</div>";
                    ?>
                  <!-- ----------------------------------------------------------------------------------------------------  -->
                </div>
            </div>
            
            <div class="contenedor-footer">
                   <div class="footer">
                        <div class="copyright">
                            © 2017 Todos los Derechos Reservados | <a href="">Empresa</a>
                        </div>

                        <div class="informacion">
                            <a href="">Informacion Compañia</a> | <a href="">Privacion y Politica</a> | <a href="">Terminos y Condiciones</a>
                        </div>
                    </div>

                </div>
            
    </footer>
  </div>

	<script src="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.js"></script>
	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="JS/bloq.js"></script>
  <script src="JS/formulario.js"></script>

</body>
</html>