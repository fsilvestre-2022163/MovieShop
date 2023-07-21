<%-- 
    Document   : Resena
    Created on : 18/07/2023, 11:01:22 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>Reseñas</title>
    </head>
    <body style="background: url(img/FondoLogin.png)">

        <div class="w-200 p-3 container w-100 bg-danger mt-5 rounded shadow" >
            <div class="row align-items-stretch">
                <div class="col d-none d-lg-block col-md-5 col-lg-5 col-xl-8 rounded">
                    <table class="table table-bordered border-primary">
                        <thead class="table-dark">
                            <tr>
                                <th>Id</th>
                                <th>Fecha</th>
                                <th>Calificación</th>
                                <th>Reseña</th>
                                <th>Precio</th>
                                <th>Usuario</th>
                                <th>Producto</th>
                            </tr>
                        </thead>
                        <tbody>     
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>              
                </div>
                
                <div style="margin-top: 1px" class="col bg-white col-sm-4 rounded-end float-end">
                    <div class="text-end">
                        <img src="img/MovieshopLogo.png" width="100">
                    </div>
                    <h2 class="fw-bold text-center py-5">RESEÑAS</h2>
                
                <form action="#">
                    <div class="mb-4">
                        <label class="form-label">Id Reseña</label>
                        <input class="form-control" name="txtId">
                    </div>
                    <div class="mb-4">
                        <label class="form-label">Fecha de valoración</label>
                        <input class="form-control" name="txtId">
                    </div>
                    <div class="mb-4">
                        <label class="form-label">Calificación</label><br>
                        <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                        <button type="button" class="btn btn-danger">1</button>
                        <button type="button" class="btn btn-danger">2</button>
                        <button type="button" class="btn btn-warning">3</button>
                        <button type="button" class="btn btn-success">4</button>
                        <button type="button" class="btn btn-success">5</button>
                        </div>
                    </div>
                    <div class="mb-4">
                        <label class="form-label">Reseña</label>
                       <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <div class="mb-4">
                            <label class="form-label">Usuario</label>
                            <br>
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Seleccionar
                            </button>
                    </div>
                    <div class="mb-4">
                            <label class="form-label">Producto</label>
                            <br>
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Seleccionar
                            </button>
                    </div>
                </form>
               </div>
            </div>
        </div>

           <script src="https://code.jquery.com/jquery-5.3.0.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
           <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
           <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
