# -*- coding: utf-8 -*-
## base generica de donde herdan todas las templates
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>ECOLOD</title>
  <!-- CSS  -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body>
  ## Menu de navegacion
  <%include file="header.mako"/>
    ##Contenido de las templates
  <%block name="main"/>
  ## Footer
  <%include file="footer.mako" />
  <script type="text/javascript">
    $(document).ready(function() {
      $('select').material_select();
    });
  </script>
</body>