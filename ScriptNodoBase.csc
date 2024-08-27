atget id id
set stop_count 0

data p "hola" id id
send p

loop
read mens
rdata mens tipo valor1 valor2

if( tipo == "alerta")
   cprint "Alerta en: longitud" valor1 ", latitud: " valor2
end

if(tipo == "critico")
	cprint "Nodo descargado en: longitud" valor1 ", latitud: " valor2
	data p "stop"	
	send p
	wait 100
	stop
end

if (tipo == "stop")
   	cprint "Recibido 'stop'. Deteniendo nodo base."
	wait 100
	stop
end
