<%! 
    int filasCine=6;
    int columnasCine=10;


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    <tr>
        <td>
            <table borde="1" width="100%">
                <tr>
                    <td width="40%"
                        <table witdh="100%">
                            <tr>
                                <td>
                                    <h3>COMPRA DE ENTRADAS </h3>
                                        <P>Bienvenidos</P>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <fieldset>
                                        <form method="POST" action="">
                                          <table width="100%" cellspacing="5" cellspacing="5">
                                            <tr>
                                                <td width="25%" align="right">fila:</td>
                                                <td><input type="text" name="fila" value=""></td>
                                            </tr>
                                            <tr>
                                                <td width="25%" align="right">Cantidad de Asientos:</td>
                                                <td><input type="text" name="cantidad" value=""></td>
                                            </tr>
                                            <tr>
                                                <td width="25%" align="right">Nombre:</td>
                                                <td><input type="text" name="nombre" value=""></td>
                                            </tr>
                                            <tr>
                                                <td width="25%" align="right">&nbsp;</td>
                                                <td><input type="checkbox" name="juntos" value="1">Asientos juntos</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><input type="submit" value="Comprar Entradas"></td>
                                            </tr>
                                           </table>
                                        </form>
                                     </fieldset>
                                </td>
                            </tr>
                            </table>
                        </td>
                        <td width="60%">
                            <table border="1" width="100%">
                                <% for(int f=0; f<filasCine; f++) { %>
                                <tr>
                                    <% for(int c=0; c<columnasCine; c++) { %>
                                    <th><img src="imagenes/asiento_libre.png"></th>
                                                             
                                    <% } %>
                                </tr>
                                <% } %>
                            </table>
                        </td>
                                                                                        
                </tr>
            </table>
            
        </td> 
        
    </tr>
    </body>
</html>
