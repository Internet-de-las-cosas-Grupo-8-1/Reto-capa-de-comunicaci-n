# Reto Capa de Comunicación

# Simulación de Red de Sensores para Detección de Incendios en CupCarbon

Este repositorio contiene los scripts para simular una red de sensores de detección de incendios utilizando CupCarbon. La simulación incluye una cadena de nodos sensores que se comunican entre sí y transmiten mensajes hasta llegar a un nodo base. La simulación está diseñada para finalizar automáticamente cuando todos los nodos sensores hayan completado 1000 transmisiones o cuando se agote la batería del primer nodo.


## Integrantes del Equipo 8-1
* Johana Constanza Ojeda Ávila
* Jhon Sebastián Bohórquez Guerrero

## Estructura del Repositorio

- **Nodo Base (Base Node Script):** 
  - Archivo: `ScriptNodoBase.csc`
  - Este script gestiona la recepción de mensajes de los sensores y se apaga automáticamente cuando recibe un mensaje de tipo `stop` del último nodo sensor en la cadena.

- **Nodo Sensor (Sensor Node Script):** 
  - Archivo: `ScriptNodoSensor.csc`
  - Este script controla el comportamiento de los nodos sensores, incluyendo la transmisión de mensajes de alerta, la propagación de mensajes `stop`, y la gestión del estado de la batería. Cada nodo sensor transmite hasta 1000 veces o hasta que su batería se agote, después de lo cual se apaga y propaga el mensaje `stop`.

## Requisitos
* **CupCarbon:** Versión compatible con la ejecución de scripts .csc.
* **JVM:** Asegúrate de que la máquina virtual Java (JVM) esté configurada con suficiente memoria para evitar errores de OutOfMemory.
