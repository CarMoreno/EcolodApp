<%inherit file="baseRutas.mako"/>
<%block name="nombre_ruta">del Maíz</%block>
<%block name="descripcion_ruta">Es una ruta de alto valor paisajístico, donde el turista podrá deleitarse con la variedad de cultivos de cítricos, cultivos de maiz, cultivos de flores exóticas. Comprende la gastronomía en torno de productos a base de maíz, tales como trasnochados, cuaresmeros, pandebonos, tortas, envueltos, masato, champus, chancarina y otros.
</%block>
<%block name="mapa">
<iframe src="https://www.google.com/maps/d/embed?mid=z6wVQXo7qC0A.kYZp_Mzxz-Gg" width="400" height="300"></iframe>
</%block> 
<%block name="categorias_ruta"><!--Categorias para la ruta del maiz-->
<div class="fixed-action-btn horizontal click-to-toggle " style="bottom: 45px; right: 24px;">
    <a class="btn-floating btn-large orange darken-4 tooltipped" data-position="top" data-delay="50" data-tooltip="Categorías Ruta del Maíz">
      <i class="fa fa-bars fa-2x"></i>
    </a>
    <!--Traemos las categorias de cada ruta...-->

    <ul>
      <!--Alojamientos-->
      <li><a class="btn-floating orange lighten-3 tooltipped" data-position="top"  data-delay="50" data-tooltip="Alojamientos"
            href=""><i class="fa fa-bed"></i></a></li> 
      <!--Restaurantes-->
      <li><a class="btn-floating orange lighten-2 tooltipped" data-position="top" data-delay="50" data-tooltip="Restaurantes"><i class="fa fa-cutlery"></i></a></li> 
      <!--Lugares-->
      <li><a class="btn-floating orange lighten-1 tooltipped" data-position="top" data-delay="50" data-tooltip="Lugares"><i class="fa fa-map-marker"></i></a></li>
      <!--Fauna--> 
      <li><a class="btn-floating orange tooltipped" data-position="top" data-delay="50" data-tooltip="Fauna"><i class="fa fa-bug"></i></a></li>
      <!--Flora-->
      <li><a class="btn-floating orange darken-1 tooltipped" data-position="top" data-delay="50" data-tooltip="Flora" href="flora"><i class="fa fa-pagelines"></i></a></li>
      <!--Empresas-->
      <li><a class="btn-floating orange darken-2 tooltipped" data-position="top" data-delay="50" data-tooltip="Empresas" href="empresas"><i class="fa fa-building-o"></i></a></li>
      <!--Eventos-->
      <li><a class="btn-floating orange darken-3 tooltipped" data-position="top" data-delay="50" data-tooltip="Eventos"><i class="fa fa-bicycle"></i></a></li>
    </ul>
</div>
</%block>