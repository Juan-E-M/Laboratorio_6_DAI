function muestraselect(str){
    var conexion;
    if(str==""){
      document.getElementById("txtHint").innerHTML="";
      return;
    }

    if(window.XMLHttpRequest){
      conexion = new XMLHttpRequest();
    }

    conexion.onreadystatechange = function(){
      if(conexion.readyState == 4 && conexion.status == 200){
        document.getElementById("div").innerHTML = conexion.responseText;
      }
    }

    conexion.open("GET", "pais.php?c="+str, true);
    conexion.send();

  };