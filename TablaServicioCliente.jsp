<%-- 
    Document   : TablaServicioCliente
    Created on : 17-jul-2023, 18:58:08
    Author     : Joshua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-image: url(img/FondoLogin.png)">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Tabla Servicio Cliente</title>
    </head>
    <body >
       <body style="background: url(img/FondoLogin.png)" >

        <div class="w-200 p-3 container w-100 bg-danger mt-5 rounded shadow" >
            <div class="row align-items-stretch">
                <div class="col d-none d-lg-block col-md-5 col-lg-5 col-xl-8 rounded">
                    <table class="table table-bordered border-primary">
                        <thead class="table-dark">
                            <tr>
                                <th>IdServicio</th>
                                <th>Descripcion</th>
                                <th>idUsuario</th>
                                <th>idProducto</th>
                            </tr>
                        </thead>
                        <tbody>     
                            <tr>
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
                            </tr>
                            <tr>
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
                            </tr>
                            <tr>
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
                            </tr>
                        </tbody>
                    </table>              
                </div>

                <div style="margin-top: 1px" class="col bg-white col-sm-4 rounded-end float-end">
                    <div class="text-end">
                        <img src="img/MovieshopLogo.png" width="48" alt="">
                    </div>
                    <h2 class="fw-bold text-center py-5">Servicio Cliente</h2>


                    <form action="#">
                        <div class="mb-4">
                            <label class="form-label">Id Servicio</label>
                            <input class="form-control" name="txtIdServicio">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Descripcion</label>
                            <input class="form-control" name="txtDescripcion">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">idUsuario</label>
                            <input class="form-control" name="txtIdUsuario">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">idProducto</label>
                            <input class="form-control" name="txtIdProducto">
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
