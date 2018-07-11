    var express= require('express'),
    aplicacion = express(),
    server = require('http').createServer(aplicacion),
    io = require('socket.io').listen(server);
	var colores = new Array(36);
	for (var i = 1; i < 37; i++) {
		colores[i]=0;			   
	}
    server.listen(3003);
    //renderizar
    aplicacion.get("/",function(req,res){
        res.sendFile(__dirname+'/juego.html');
    });


 //se recoge el dato que se encuentra en el sockets y se envía a los demás
   io.sockets.on('connection',function(socket){
            console.log("conexion Establecida");           
     
 socket.on('jugada',function(dataS){
		colores[dataS.id2]=1;//seteo en el arreglo 1 usado 0 libre
		io.sockets.emit('jugada2',dataS);//y regreso la jugada2
		for (var i = 1; i < 37; i++) {
			if(colores[i]==1)//hago la actualiacoon de los botoenes en el caso de haberse cerrado
			{
				dataS.id2=i;
				io.sockets.emit('jugada2',dataS);
			}		   
		}
       
       console.log("jugada"+dataS.id+"--"+dataS.id2);//aqui solo escribo en la consola los movimoentos 
 });
   });


    


