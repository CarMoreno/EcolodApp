## index.html
<%inherit file="base.mako"/>

<%block name="main">
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <br><br>
      <h1 class="header center orange-text">ECOLOD</h1>
      <div class="row center">
        <h5 class="header col s12 light">Dataset con información ecoturística del Centro del Valle del Cauca</h5>
      </div>
      <div class="row center">
        <nav class="green darken-1 lighten-2">
          <div class="nav-wrapper">
            <form name="busqueda" action="view" method="GET">
                <div class="input-field">
                  <input id="search" name="id" type="search" required>
                  <label for="search"><i class="fa fa-search fa-2x"></i></label>
                </div>
              </div>
            </form>
          </div>
        </nav>
      </div>
      <br><br>
    </div>
  </div>
  <div class="container">
    <div class="section">
      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m6">
          <div class="card light-green lighten-3">
            <div class="card-content">
              <h2 class="center"><a class="light-green-text tooltipped" data-position="left" data-delay="50" data-tooltip="Acceder a esta ruta" href="rutaMaiz"><i class="fa fa-pagelines"></a></i></h2>
              <h5 class="center">Ruta del Maíz</h5>
            </div>
            <div class="card-action center">  
              <div class="chip">Cultivos de cítricos</div>
              <div class="chip">Cultivos de maíz</div>
              <div class="chip">Flores exóticas</div>
            </div>
          </div>

        </div>

        <div class="col s12 m6">
          ##fa fa-leaf
          <div class="card light-green lighten-3">
            <div class="card-content">
              <h2 class="center"><a class="light-green-text tooltipped" data-position="left" data-delay="50" data-tooltip="Acceder a esta ruta" href="flora"><i class="fa fa-leaf"></a></i></h2>
              <h5 class="center">Ruta de la Vuelta Oriente</h5>
            </div>
            <div class="card-action center">  
              <div class="chip">Ciclo paseos</div>
              <div class="chip">Cabalgatas</div>
              <div class="chip">Moto paseos</div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col s12 m6">
        ##fa fa-tint
          <div class="card light-green lighten-3">
            <div class="card-content">
              <h2 class="center"><a class="light-green-text tooltipped" data-position="left" data-delay="50" data-tooltip="Acceder a esta ruta" href="rutaMaiz"><i class="fa fa-tint"></a></i></h2>
              <h5 class="center">Ruta del Anillo Agricola</h5>
            </div>
            <div class="card-action center">  
              <div class="chip">Escultura</div>
              <div class="chip">Contacto Natural</div>
              <div class="chip">Tradiciones</div>
            </div>
          </div>
        </div>
        <div class="col s12 m6">
          ##tree
          <div class="card light-green lighten-3">
            <div class="card-content">
              <h2 class="center"><a class="light-green-text tooltipped" data-position="left" data-delay="50" data-tooltip="Acceder a esta ruta" href="rutaMaiz"><i class="fa fa-tree"></a></i></h2>
              <h5 class="center">Ruta del Jardín Botánico</h5>
            </div>
            <div class="card-action center">  
              <div class="chip">Bamboo</div>
              <div class="chip">Flores Ornamentales</div>
              <div class="chip">Caminatas educativas</div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col s12 m6 offset-m3">
          <div class="card light-green lighten-3">
            <div class="card-content">
              <h2 class="center"><a class="light-green-text tooltipped" data-position="left" data-delay="50" data-tooltip="Acceder a esta ruta" href="rutaMaiz"><i class="fa fa-road"></a></i></h2>
              <h5 class="center">RioFrio</h5>
            </div>
            <div class="card-action center">  
              <div class="chip">Hostales</div>
              <div class="chip">Recreación</div>
              <div class="chip">Avistamiento de aves</div>
            </div>
          </div>
      </div>
    </div>
  </div>
    <br><br>
  </div>
</%block>  