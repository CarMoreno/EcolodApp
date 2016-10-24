# -*- coding: utf-8 -*-
## Resultados de las consultas
<%inherit file="base.mako" />
<%block name="main">
	<div class="container">
	<h3>Resultados</h3>
	<p>La búsqueda ha arrojado los siguientes resultados</p>
      %if len(datos) == 0:
        <br>
        <p align="center"><i class="fa fa-frown-o fa-5x"></i></p>
        <p align="center">No se encontraron registros</p>
        <br>
        <br>
        <br>
      %else: 
        <div class="row">
        %for fila in datos:   
            <div class="col s12 m7">
              <div class="card large">
                <div class="card-image">
                %for objeto in fila:
                  %if objeto['obj']['value'].find('imgur') != -1: 
                    <img src=${objeto['obj']['value']}/>      
                    <% break %>
                  %endif 
                %endfor
                </div>
                %for objeto in fila:
                  %if objeto['obj']['type'] == 'literal' and len(objeto['obj']['value'])<44:
                    <span class="card-title">${objeto['obj']['value']}</span>
                    <% nombre = objeto['obj']['value'] %>
                    <% break %>
                  %else:
                    <% nombre = 'Ninguno' %>
                  %endif
                %endfor
                <div class="card-content">               
                %for objeto in fila:
                  %if (objeto['obj']['type'] == 'literal' and objeto['obj']['value'].find(nombre) == -1):
                    <p align="justify">${objeto['obj']['value']}</p>
                  %endif
                %endfor
                </div>
                <div class="card-action">
                %for objeto in fila:
                  %if (objeto['obj']['type'] == 'uri' and objeto['obj']['value'].find('imgur') == -1 and nombre != 'Ninguno'):
                    <a href=${objeto['obj']['value']}>Enlaces Externos</a>
                  %endif
                %endfor
                </div>
              </div>
            </div>
        %endfor
      </div>
      %endif
      <% del datos[:] %>
	</div>	
</%block>