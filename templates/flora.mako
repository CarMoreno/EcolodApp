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
			<input id="familia" type="text" class="validate">
			<label for="familia">Buscar por familia</label>
		</div>
		<div class="input-field col s12">
			<i class="fa fa-pencil fa-lg prefix light-green-text"></i>
			<input id="nombre-comun" type="text" class="validate">
			<label for="nombre-comun">Buscar por nombre común</label>
		</div>
		<div class="col s12 center" style="margin-top: 1.5rem">
			<button class="btn waves-effect waves-light light-green" type="submit" name="action">Buscar
				<i class="fa fa-search"></i>
			</button>
		</div>
        
	</div>
</form>
</%block>

<%block name="nombre_categoria"><i class="fa fa-pagelines light-green-text"></i> Flora</%block>
<%block name="contenido_categoria">
<div class="row">
%for fila in datos:
	<div class="col l5">
		<div class="card large">
			<div class="card-image">
			%for objeto in fila:
                %if objeto['obj']['value'].find('imgur') != -1: 
                    <img src=${objeto['obj']['value']}/>      
                %endif 
            %endfor
            %for objeto in fila:
                %if objeto['obj']['type'] == 'literal': 
                    <span class="card-title">${objeto['obj']['value']}</span> 
                    <% nombre = objeto ['obj']['value'] %>  
                    <% break %>
                %endif
            %endfor
		    </div>
		    <div class="card-content">
		    %for objeto in fila:
                %if (objeto['obj']['type'] == 'literal' and objeto['obj']['value'].find(nombre) == -1):
                    <p align="justify">${objeto['obj']['value']}</p>
                %endif
            %endfor
		    </div>
		    <div class="card-action">
		    %for objeto in fila:
                %if (objeto['obj']['type'] == 'uri' and objeto['obj']['value'].find('imgur') == -1):
                    <a href=${objeto['obj']['value']}>Enlaces Externos</a>
                %endif
            %endfor
		    </div>
		</div>
	</div>
%endfor
<% del datos[:] %>
</div>
</%block>