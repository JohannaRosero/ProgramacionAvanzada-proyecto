    var express= require('express'),
    aplicacion = express(),
    server = require('http').createServer(aplicacion),
    io = require('socket.io').listen(server);
	var colores = new Array(36);
	for (var i = 1; i < 37; i++) {
		colores[i]=0;			   
	}
    server.listen(3002);
    //renderizar
    aplicacion.get("/",function(req,res){
        res.sendFile(__dirname+'/juego.html');
    });


 //se recoge el dato que se encuentra en el sockets y se envía a los demás
   io.sockets.on('connection',function(socket){
            console.log("conexion Establecida");           
     
 socket.on('jugada',function(dataS){
		colores[dataS.id2]=1;
		io.sockets.emit('jugada2',dataS);
		for (var i = 1; i < 37; i++) {
			if(colores[i]==1)
			{
				dataS.id2=i;
				io.sockets.emit('jugada2',dataS);
			}		   
		}
       
       console.log("jugada"+dataS.id+"--"+dataS.id2);
 });
   });


    


