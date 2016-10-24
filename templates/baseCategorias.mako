<%inherit file="base.mako"/>
<%block name="main">
	<!-- Page Layout here -->	
	    <div class="row">
	    	<div class="col l3 m3 s12" style="margin-top: 0.9rem">
	    		<div class="row">
		      		<div class="col l12 m12 s12 light-green lighten-3">
		      			<h4><%block name="nombre_categoria"/></h4>
	        			<%block name="filtros" />
		      		</div>
	      		</div>	
	    	</div>

	    	<div class="col l9 m9 s12">
	        	<%block name="contenido_categoria" />
	    	</div>
	    </div>
</%block>
