<%-- 
    Document   : altapac
    Created on : 21/07/2021, 07:53:32 AM
    Author     : LeslieGonzalezFuente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- Librerias y componentes de JS u CSS3-->
        <!-----------------------------BOOTSTRAP----------------------------->
<!--Icono-->
<link rel="Icon" type="img/png" href="img/logoicono.png">
<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css"/>
<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css"/>
<!--Ventanas emergentes-->
<link rel="stylesheet" type="text/css" href="css/ventanas.css">
<link rel="stylesheet" href="style.css">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link ref="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="css/navbar.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/geolocation.css">
<link type="text/css" rel="stylesheet" href="demobar_files/bootstrap.css">
<script type="text/javascript" src="demobar_files/jquery-latest.min.js"></script>
<script type="text/javascript" src="demobar_files/jquery.min.js"></script>
<script type="text/javascript" src="demobar_files/bootstrap.js"></script>
<script src="js/ie-emulation-modes-warning.js"> </script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-----------------------------/BOOTSTRAP----------------------------->
        <title>JSP Alta</title>
    </head>
    <body style="background-color: #45B39D">
        <h1>Sistema Java WEB GonzalezF SA de CV </h1>
        <hr>
         <!--Librerias-->
        <%@page import = "java.sql.*"%>
        <%@page import = "conexionbd1.Conexion"%>
        
        <!--Librerias-->
        <!--Llamada a la conexión y variables-->
        <!--Instruccion SQL para insertar-->
        <% 
            Conexion conexion=new Conexion("jdbc:mysql://localhost/bddtigonzalez","root",""); 
            String curp=request.getParameter("curp");
            String nombre=request.getParameter("nombre");
            String apePaterno=request.getParameter("apepat");
            String apeMaterno=request.getParameter("apemat");
            int precHospital=Integer.parseInt(request.getParameter("preh"));
            int dHospital=Integer.parseInt(request.getParameter("diash"));
            int descDias=Integer.parseInt(request.getParameter("desch"));
           
            
        
            String altaQuery="INSERT INTO pacientes1 VALUES ('"+curp+"', '"+nombre+"', '"+apePaterno+"', '"+apeMaterno+"', '"+dHospital+"', '"+precHospital+"', '"+descDias+"')"  ;
        
            int c = conexion.ejecutaSentencia(altaQuery);
            if(c==1){//inicia if
        %>  
        <div class="container">
            <div class="jumbotron">
                <center>
                    <a href="../../Exa_Prac-Gonzalez_DTI217/web/altapac.html"></a>
                    <h2>Confirma Alta de Registro Paciente</h2>
                    <img src="img/check.jpg" class="img img-responsive" alt="logo"/>
                    <hr>
                    <div class="thumbnail">
                        <h2>Se agrego de forma exitosa un nuevo paciente</h2>
                        <hr>
                        <h3>Curp: <%= curp%></h3>
                        <h3>Nombre: <%= nombre%></h3>
                        <h3>Apellido Paterno: <%= apePaterno%></h3>
                        <h3>Apellido Materno: <%= apeMaterno%></h3>
                        <h3>Días de Hospitalización:<%= dHospital%></h3>
                        <h3>Precio por Hospitalización:<%=precHospital%></h3>
                        <h3>Descuento por Hospitalización:<%=descDias%></h3>
                        <h3>Precio total de la hospitalización:</h3>   
                        <%
                         float  PrecioTotal =dHospital*precHospital;
                        %>
                        <h4><%=PrecioTotal%></h4>  
                        <hr>
                        <h3>Descuento aplicado por más de 5 dias de hospitalización:</h3>
                         <%
                           float DescTotal = (PrecioTotal * descDias) - PrecioTotal;
                         %>
                         <h3>$<%=DescTotal%></h3>

                       
                    </div>
                    
                    <h3>Fecha y hora del sistema: <%= new java.util.Date()%> </h3>
                       <a href="index.html"><h4>Regresar a Menu Principal</h4></a>
                </center>
                <%
                    }//Termina if
                %>
            </div>
        </div>
        
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
<script type="js/jquery-1.8.0.min"></script>        
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
    </body>
</html>


    </body>
</html>

