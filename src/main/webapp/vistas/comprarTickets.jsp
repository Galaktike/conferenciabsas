<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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

    <title>Comprar Tickets</title>    
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg bg-nav-gris">
            <div class="container">
                <span>
                    <img class="logo" src="media/codoacodo.png" alt="logo Codo a codo">    
                    <a class="navbar-brand text-white" href="index.html">Conf Bs As</a>                            
                </span>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav align-items-center">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.html">La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.html#oradores">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.html#fecha-lugar">La fecha y el lugar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.html#form">Conviértete en orador</a>
                        </li>
                        <li class="nav-item ticket">
                            <a class="nav-link" href="">Auditorios</a>
                        </li>
                    </ul>
                </div>
            </div>           
        </nav>
    </header>

    <!-- Seccion Tickets -->

    <section class="container my-4 contenedorTicket p-0 " id="contenedorTicket">
        <div class="row g-1 mb-2 text-center">
            <div class="col-4">
                <div class="card border border-2 border-primary-subtle rounded-0">                    
                    <h4 class="mt-4">Estudiante</h4>
                    <p class="fs-5">Tienen un descuento</p>
                    <p class="fs-6 fw-bold">80%</p>
                    <p class="fw-light"><small>*presentar documentación</small></p>
                </div>
            </div>
            <div class="col-4">
                <div class="card border border-2 border-success-subtle rounded-0"> 
                    <h4 class="mt-4">Trainee</h4>
                    <p class="fs-5">Tienen un descuento</p>
                    <p class="fs-6 fw-bold">50%</p>
                    <p class="fw-light"><small>*presentar documentación</small></p>
                </div>
            </div>
            <div class="col-4">
                <div class="card border border-2 border-warning-subtle rounded-0">
                    <h4 class="mt-4">Junior</h4>
                    <p class="fs-5">Tienen un descuento</p>
                    <p class="fs-6 fw-bold">15%</p>
                    <p class="fw-light"><small>*presentar documentación</small></p>
                </div>
            </div>
        </div>

        <div class="mb-3 text-uppercase text-center">
            <h6 class="fw-normal">Venta</h6>
            <h1>Valor de ticket $200</h1>
        </div>
        
        <form class="row g-2" id="form-ticket">
            <div class="col-6">
                <input type="text" class="form-control" placeholder="Nombre" aria-label="First name">
            </div>
            <div class="col-6 mb-2">
                <input type="text" class="form-control" placeholder="Apellido" aria-label="Last name">
            </div>
            <div class="mb-2">                
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Correo">
            </div>
            <div class="col-6">
                    <label for="cantidad" class="form-label">Cantidad</label>
                    <input type="number" class="form-control" id="cantidad" placeholder="cantidad">
            </div>
            <div class="col-6 mb-4">
                <label for="porcentaje" class="form-label">Categoría</label>
                <select class="form-select" id="porcentaje" aria-label="Default select example">
                    <option selected value="80">Estudiante</option>
                    <option value="50">Trainee</option>
                    <option value="15">Junior</option>
                </select>
            </div>
            <div class="col-12 mb-3">                
                <div class="border-primary-subtle text-primary-emphasis mb-0 px-3 py-3 alert alert-primary" role="alert">
                    Total a Pagar: $
                    <span id="totalPagar"></span>                
                </div>
            </div>
            <div class="col-6 d-grid">
                <button class="btn btn-primary btn-verde" id="borrar" type="reset">Borrar</button>
            </div>
            <div class="col-6 d-grid">
                <button class="btn btn-primary btn-verde" id="resumen" type="submit">Resumen</button>
            </div>
        </form>   
    </section>

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