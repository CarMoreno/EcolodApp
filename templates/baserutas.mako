## Template base para las rutas
<%inherit file="base.mako"/>
<%block name="main">
	## <div class="row" style="margin:0 auto;">
		
	## <div>
	<div class="container">
		<div class="row">
			<br>
			<div class="col l7 m6 s12 ">
				<h4>Ruta <%block name="nombre_ruta" /></h4>
				<div class="divider"></div>
				<p class="text-justify"><%block name="descripcion_ruta"/></p>
			</div>
			<div class="col l5 m6 s12">
				<h4>Mapa de Ruta</h4>
				<div class="divider"></div>
		           <%block name="mapa" />
			</div>
			<!--Categorias-->
			<%block name="categorias_ruta" />
		</div>
	</div>	
</%block>