<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="media/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="media/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="media/favicon-16x16.png">
    <link rel="manifest" href="media/site.webmanifest">
    <link rel="mask-icon" href="media/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">

    <!-- bootstrap -->
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    
    <link rel="stylesheet" href="styles/mi_estilo.css">

    <title>Conferencia Bs As</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg bg-nav-gris">
            <div class="container">
                <span>
                    <img class="logo" src="media/codoacodo.png" alt="logo Codo a codo">    
                    <a class="navbar-brand text-white" href="#presentacion">Conf Bs As</a>                            
                </span>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav align-items-center">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#presentacion">La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#oradores">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#fecha-lugar">La fecha y el lugar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#form">Conviértete en orador</a>
                        </li>
                        <li class="nav-item ticket">
                            <a class="nav-link " href="Controlador?access=verAuditorios">Auditorios</a>
                        </li>
                    </ul>
                </div>
            </div>           
        </nav>
    </header>

    <!-- Seccion Presentacion -->

    <section class="presentacion vh-100" id="presentacion">    
        <div class="container-fluid bg-black bg-opacity-50 vh-100">
            <div class="row text-white justify-content-end align-items-end pe-3 pb-5 pe-md-4 pe-lg-5 text-end vh-100">
                <div class="col-5 mt-0 mb-3 pe-3 pb-5 pe-md-4 pe-lg-5">
                    <h1>Conf Bs As</h1>
                    <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                    <button type="button" class="btn btn-outline-light mb-2">Quiero ser orador</button>
                    <button type="button" class="btn btn-success bg-btn-ticket mb-2"><a href="Controlador?access=comprarTickets">Comprar tickets</a></button>                    
                </div>
            </div>
    </section>      

    <!-- Seccion Oradores -->

    <section class="container bg-white" id="oradores">
        <div class="titulo text-center p-3">
            <p>Conoce a los</p>
            <h2>ORADORES</h2>
        </div>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="media/steve.jpg" class="card-img-top" alt="Foto de Steve Jobs">
                    <div class="mt-4 ms-3">
                        <span class="badge text-bg-warning">Javascript</span>
                        <span class="badge bg-react text-white">React</span>
                    </div>
                    <div class="card-body pt-1">
                        <h5 class="card-title">Steve Jobs</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum provident dolorem est tempore voluptate fuga molestiae sit eos in dolor, quod eligendi exercitationem culpa veritatis ea facere aperiam alias magnam?</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="media/bill.jpg" class="card-img-top" alt="Foto de Bill Gates">
                    <div class="mt-4 ms-3">
                        <span class="badge text-bg-warning">Javascript</span>
                        <span class="badge bg-react text-white">React</span>
                    </div>
                    <div class="card-body pt-1">
                    <h5 class="card-title">Bill Gates</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum provident dolorem est tempore voluptate fuga molestiae sit eos in dolor, quod eligendi exercitationem culpa veritatis ea facere aperiam alias magnam?</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="media/ada.jpeg" class="card-img-top" alt="foto de Ada Lovelace">
                    <div class=" mt-4 ms-3">
                        <span class="badge text-bg-secondary">Negocios</span>
                        <span class="badge text-bg-danger">Startups</span>
                    </div>
                    <div class="card-body pt-1">
                        <h5 class="card-title">Ada Lovelace</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum provident dolorem est tempore voluptate fuga molestiae sit eos in dolor, quod eligendi exercitationem culpa veritatis ea facere aperiam alias magnam?</p>
                    </div>
                </div>
            </div>
        </div>        
    </section>

    <!-- Seccion Lugar y Fecha -->

    <section class="container-fluid p-0" id="fecha-lugar">    
        <div class="container-fluid">
            <div class="row">                                
                <div class="col-lg-6 p-0">                      
                    <img src="media/honolulu.jpg" alt="Foto de la costa de playa de Honolulu" class="img-fluid"> 
                </div>
                <div class="col-lg-6 bg-gris text-white text-opacity-75 p-3 border-start border-sm-left-none border-lg-left-none">
                    <h3>Bs As - Octubre</h3>
                    <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu es la mas sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km<sup>2</sup> de superficie).</p>
                    <button type="button" class="btn btn-outline-light btn-sm">Conocé más</button>
                </div>
            </div> 
        </div>          
    </section>

    <!-- Seccion Formulario -->

    <section class="container formulario bg-white" id="form">        
            <div class="text-center mt-3 mx-5">
                <p class="text-uppercase mb-0 small fw-light">Conviértete en un </p>
                <h2 class="text-uppercase">Orador</h2>        
                <p>Anótate como orador en una <abbr title="charla ignite">charla ignite</abbr>. Cuéntanos de qué quieres hablar!</p> 
            </div>      
            <form class="row g-3 mb-3 mx-5">                
                <div class="col-md-6">
                    <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre">                
                </div>
                <div class="col-md-6">
                    <input type="text" class="form-control" placeholder="Apellido" aria-label="Apellido">
                </div>                  
                <div class="col-12">                
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="¿Sobre qué quieres hablar?"></textarea>
                    <small class="form-text text-muted">Recuerda incluir un título para tu charla</small>
                </div>                  
                <div class="col-12 d-grid">
                    <button type="submit" class="btn btn-primary btn-verde">Enviar</button>                    
                </div>            
            </form>                     
    </section>
    
    <!-- Seccion Footer -->

    <footer class="container-fluid footer">
        <ul class="row p-3 p-md-4 text-center mb-0 justify-content-around justify-content-md-center">
            <li class="col-md-4 col-lg-2">
                <a class="text-white text-decoration-none" href="#">Preguntas frecuentes</a>
            </li>
            <li class="col-md-4 col-lg-2">
                <a class="text-white text-decoration-none" href="#form">Contáctanos</a>
            </li>
            <li class="col-md-4 col-lg-1">
                <a class="text-white text-decoration-none" href="#">Prensa</a>
            </li>
            <li class="col-md-4 col-lg-2">
                <a class="text-white text-decoration-none" href="#presentacion">Conferencia</a>
            </li>
            <li class="col-md-4 col-lg-2">
                <a class="text-white text-decoration-none" href="#">Términos y condiciones</a>
            </li>
            <li class="col-md-4 col-lg-1">
                <a class="text-white text-decoration-none" href="#">Privacidad</a>
            </li>
            <li class="col-md-4 col-lg-2">
                <a class="text-white text-decoration-none" href="#">Estudiantes</a>
            </li>
        </div>
    </footer>    

    <script src="js/bootstrap.min.js"></script>

    <script src="js/mi_js.js"></script> 
    
</body>
</html>