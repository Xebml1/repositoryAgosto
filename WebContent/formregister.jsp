<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- --ETIQUETAS DE STRUTS -->
<%@ taglib prefix="s" uri="/struts-tags" %>
<!-- -IMPORTA ETIQUETAS DE JAVA SCRIPT -->
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<s:head/>
<sx:head/>
<body>

	<sx:tabbedpanel id="formCrud">
		<sx:div label="MODULO CRUD - REGISTER">
			<s:form action="alta.action" method="post">
			 <s:push value="register">
			 	
			 	<s:hidden key="id"/>
			 	
			 	<s:textfield key="nombre" label="NOMBRE"/>
			 	<s:radio name="genero" label="GENERO" list="#{'Masculino':'MASCULINO','Femenino':'FEMENINO' }"/>
			 	<s:select name="ciudad" label="CIUDAD" list="#{'Pue':'PUEBLA','Tlax':'TLAXCALA','Mor':'MORELOS','CdMx':'CD-MX','Ver':'VERACRUZ' }"
			 	headerKey="1" headerValues="Selecciona Ciudad"/>
			 	<s:textarea key="descripcion" label="DESCRIPCION"/>
			 	<s:checkbox name="desarrollador" label="TIENE EXPERIENCIA EN SIABEL?" />
			 	<s:submit value="Aceptar"/>
			 	<s:reset value="Limpiar" />
			 	
			 </s:push>
			 </s:form>
			 	
			 <table border="1">
			 	<tr>
			 		<th>ID</th>
			 		<th>NOMBRE</th>
			 		<th>GENERO</th>
			 		<th>CIUDAD</th>
			 		<th>DESCRIPCION</th>
			 		<th>DESARROLLADOR</th>
			 		<th>EDITAR</th>
			 		<th>ELIMINAR</th>
			 	</tr>
			 <s:iterator value="listRegisters">
			 	<tr>
			 		<td><s:property value="id" /></td>
			 		<td><s:property value="nombre" /></td>
			 		<td><s:property value="genero" /></td>
			 		<td><s:property value="ciudad" /></td>
			 		<td><s:property value="descripcion" /></td>
			 		<td><s:property value="desarrollador" /></td>
			 		<td>
			 			<s:url id="editURL" action="editar">
			 				<s:param name="id" value="%{id}"/>
			 			</s:url>
			 			<s:a href="%{deleteURL}">Delete</s:a>
			 		</td>
			 	</tr>
			 </s:iterator>
			 </table>
			</sx:div>
		</sx:tabbedpanel>
			 		

</body>
</html>