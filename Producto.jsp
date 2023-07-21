<%-- 
    Document   : Producto
    Created on : 16/07/2023, 03:58:22 PM
    Author     : SIPAC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>Películas</title>
    </head>
    <body style="background: url(img/FondoLogin.png)" >

        <div class="w-200 p-3 container w-100 bg-danger mt-5 rounded shadow" >
            <div class="row align-items-stretch">
                <div class="col d-none d-lg-block col-md-5 col-lg-5 col-xl-8 rounded">
                    <table class="table table-bordered border-primary">
                        <thead class="table-dark">
                            <tr>
                                <th>Id</th>
                                <th>Película</th>
                                <th>Género</th>
                                <th>Categoría</th>
                                <th>Precio</th>
                                <th>Duración</th>
                                <th>Sinopsis</th>
                                <th>Portada</th>
                                <th>Proveedor</th>
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
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>              
                </div>

                <div style="margin-top: 1px" class="col bg-white col-sm-4 rounded-end float-end">
                    <div class="text-end">
                        <img src="img/MovieshopLogo.png" width="48" alt="">
                    </div>
                    <h2 class="fw-bold text-center py-5">PELÍCULAS</h2>


                    <form action="#">
                        <div class="mb-4">
                            <label class="form-label">Id Película</label>
                            <input class="form-control" name="txtId">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Nombre Película</label>
                            <input class="form-control" name="txtNombrePelícula">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Género</label>
                            <input class="form-control" name="txtGenero">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Categoría</label>
                            <input class="form-control" name="txtCategoria">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Precio</label>
                            <input class="form-control" name="txtPrecio">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Tiempo de duración</label>
                            <input class="form-control" name="txtDuracion">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Sinopsis</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Portada</label>
                            <br>                            
                            <img src="img/Vacio.png" class="rounded float-left" width="100px" height="125" style="margin-bottom: 3px">
                            <br>
                            <button type="submit" class="btn btn-primary">Seleccionar</button>
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Proveedor</label>
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
