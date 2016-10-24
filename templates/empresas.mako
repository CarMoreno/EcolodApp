<%inherit file="baseCategorias.mako"/>
<%block name="filtros">
<form method="POST">
	<div class="row">
	<div class="input-field col s12">
		<select>
			<option value="" disabled selected>Mostrar los primeros</option>
			<option value="1">5</option>
			<option value="2">15</option>
			<option value="3">20</option>
		</select>
		<label></label>
	</div>
		<div class="input-field col s12">
			<i class="fa fa-pencil fa-lg prefix light-green-text"></i>
			<input id="nombre" type="text" class="validate">
			<label for="nombre">Buscar por nombre</label>
		</div>
		<div class="col s12 center" style="margin-top: 1.5rem">
			<button class="btn waves-effect waves-light light-green" type="submit" name="action">Buscar
				<i class="fa fa-search"></i>
			</button>
		</div>
	</div>
</form>
</%block>

<%block name="nombre_categoria"><i class="fa fa-building-o light-green-text"></i> Empresas</%block>
<%block name="contenido_categoria">
<div class="row"><!--Un ciclo para mostrar cartas.-->
	<div class="col l4">
		<div class="card">
			<div class="card-image">
		 		<img src="http://lorempixel.com/400/200/"/>
		        <span class="card-title">Card Title</span>
		    </div>
		    <div class="card-content">
		    	<p>${datos}</p>
		    </div>
		    <div class="card-action">
		        <a href="#">This is a link</a>
		    </div>
		</div>
	</div>
		<div class="col l4">
		<div class="card">
			<div class="card-image">
		 		<img src="http://lorempixel.com/400/200/"/>
		        <span class="card-title">Card Title</span>
		    </div>
		    <div class="card-content">
		    	<p>${datos}</p>
		    </div>
		    <div class="card-action">
		        <a href="#">This is a link</a>
		    </div>
		</div>
	</div>
		<div class="col l4">
		<div class="card">
			<div class="card-image">
		 		<img src="http://lorempixel.com/400/200/"/>
		        <span class="card-title">Card Title</span>
		    </div>
		    <div class="card-content">
		    	<p>${datos}</p>
		    </div>
		    <div class="card-action">
		        <a href="#">This is a link</a>
		    </div>
		</div>
	</div>
</div>
</%block>