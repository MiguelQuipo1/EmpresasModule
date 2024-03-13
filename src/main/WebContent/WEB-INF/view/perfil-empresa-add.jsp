<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Perfil Empresa</h1>
	

<form action="add" method="POST" >
	
	 

	 idPerfilEmpresa
	 <input type="hidden" id="idPerfilEmpresa" name="idPerfilEmpresa" value="${perfil.idPerfilEmpresa}">
	 <br/><br/>
	 logo
	 <div>
	 <label for="imagen" class="label-file">
            <i class="fas fa-upload"></i> Seleccionar Imagen</label>
	 <input type="file" id="logo" name="logo" value="${perfil.logo} onclick="google.script.run.upload(this.parentNode)">
	 </div>
	 <br/><br/>
	 opcColor1
	  <input type="color" id="opcColor1" name="opcColor1" onchange="updateColor() value="${perfil.opcColor1}">
	
	 <br/><br/>
	 opcColor2
	  <input type="color" id="opcColor2" name="opcColor2" onchange="updateColor() value="${perfil.opcColor2}">
	 <br/><br/>
	 Empresa
	 <select id="idEmpresa" name="idEmpresa">	 	
	 	<c:forEach var="item" items="${empresa}" >
	 		<option value="${item.idEmpresa}" ${perfil.empresa.idEmpresa == item.idEmpresa ? 'selected' : ''}>${item.nombreempresa} </option>
	 	</c:forEach>	 		 		 		 
	 </select>
	 <br/><br/>
	 	 
	
	 <button type="submit">Guardar</button>	
     <button type="button" onclick="window.location.href='/ismac-emprendimientos-web/perfilEmpresa/findAll'; return false;">Cancelar</button>
	
	
	</form>
	

	
	 <script>
        function updateColor() {
            // Obtén el valor del input de color
            var colorInput = document.getElementById('colorInput');
            var selectedColor = colorInput.value;

            // Convierte el valor HEX a RGB
            var rgbValue = hexToRgb(selectedColor);

            // Muestra el valor RGB en la página
            document.getElementById('rgbValue').textContent = 'RGB(' + rgbValue.r + ', ' + rgbValue.g + ', ' + rgbValue.b + ')';
        }

        function hexToRgb(hex) {
            // Elimina el símbolo '#' si está presente
            hex = hex.replace(/^#/, '');

            // Convierte los valores hexadecimales a decimales
            var bigint = parseInt(hex, 16);

            // Extrae los componentes de color RGB
            var r = (bigint >> 16) & 255;
            var g = (bigint >> 8) & 255;
            var b = bigint & 255;

            // Devuelve un objeto con los valores RGB
            return { r: r, g: g, b: b };
        }
    </script>
</body>
</html>