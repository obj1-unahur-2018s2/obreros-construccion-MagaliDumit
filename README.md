Obras y obreros

Debemos armar un modelo de obras en construcción, y los obreros que trabajan en ellas.
Modelo básico

Una obra requiere, para su finalización, de trabajos de distintas características. A su vez, contamos con distintos tipos de obrero, los obreros de un tipo se encargarán de cierto trabajo. Del trabajo que realiza un obrero en una obra nos interesa: lo que aporta para que la obra se vaya acercando a su finalización, y lo que consume de materiales.

Para cada obrero se debe registrar si está o no de licencia, esto puede cambiar en cualquier momento.

Cada obra cuenta, en cada momento, con una plantilla con los obreros que están asignados a la misma. Los obreros disponibles para una obra son los que están en su plantilla, y no están de licencia. En cualquier momento se tiene que poder agregar o quitar a un obrero de la plantilla.

Se deben considerar cuatro tipos de obreros: albañiles, plomeros, electricistas y gasistas. En cada jornada de trabajo:

    un albañil consume 100 ladrillos; su aporte es levantar 3 metros cuadrados de pared.
    un gasista consume 3 metros de caño y 20 fósforos, su aporte es colocar 3 metros de caño de gas (es el caño que consumió).
    un plomero consume 10 metros de caño y 30 arandelas, su aporte es colocar 9 metros de caño de agua (son 9 de los 10 metros que consume; el resto es desperdicio).
    un electricista consume 4 metros de cable y un rollo de cinta aisladora, su aporte es colocar los 4 metros de cable.

De la obra se conoce cuánto tiene de cada material: ladrillos, caño, cable, cinta, fósforos y arandelas.

En las obras que consideramos, se usan los mismos caños para agua y para gas.

Requerimiento
Construir este modelo de forma tal que se pueda registrar una jornada laboral. En esta etapa, alcanza con registrar el consumo de materiales de cada obrero disponible.

P.ej. supongamos una obra que tiene entre sus materiales, 1000 ladrillos, 400 metros de caño, 8000 fósforos y 500 arandelas. Tiene cinco obreros en plantilla: dos albañiles, dos gasistas y un plomero. Uno de los albañiles está de licencia.

Después de registrar una jornada laboral deben quedar:

    900 ladrillos (se restan los 100 que consumió el albañil disponible),
    384 metros de caño (se restan los 6 de los dos gasistas más los 10 del plomero),
    7960 fósforos (se restan 20 por cada uno de los dos gasistas), y
    470 arandelas (se restan las 30 que consumió el plomero).

El aporte de cada obrero será considerado en una etapa posterior del modelo.

También se debe poder:

    registrar la recepción de una cantidad de ladrillos.
    lo mismo con cada tipo de material: metros de caño, fósforos, etc..
    poder preguntarle a una obra si tiene a un determinado obrero en la plantilla.


Pago de jornales

Agregar al modelo la información necesaria para saber cuánto hay que pagarle a cada obrero en jornales adeudados, y para manejar el efectivo con que cuenta la obra.

Para esto, agregar en cada obrero, el dato de cuántos jornales se le adeudan. Este número debe aumentar en uno para cada jornada laboral que realice el obrero; esto hay que agregarlo al registro de una jornada laboral en una obra.

El importe de jornal de cada obrero se pacta con UOCRA, el sindicato de obreros de la construcción. Se establecen tres valores: uno para albañil, otro para especialista de baño y cocina (que incluye a gasistas y plomeros), otro para electricistas.

Requerimientos

    Poder preguntar, para un obrero, cuánto tiene para cobrar por jornales. Es el resultado de multiplicar la cantidad de jornales adeudados por el importe de jornal pactado con UOCRA.
    Poder preguntar el importe total que una obra adeuda en jornales a los obreros de su plantilla.
    Poder registrar el pago de jornales adeudados. Los efectos son: para cada obrero se cancelan los jornales adeudados, pasando a 0; el efectivo de la obra baja para reflejar el pago del importe total que adeuda la obra.
    Poder registrar que se agrega un importe al efectivo de una obra.

Siguiendo con el ejemplo anterior, supongamos que el obrero que estaba de licencia vuelve al trabajo, que el plomero sale de licencia, y que luego se registra otra jornada laboral en la obra. Los importes de jornales pactados con UOCRA son, en este ejemplo: 2000 pesos para albañiles, 3000 para especialistas de baño y cocina, 3500 para electricistas. La obra tiene 100000 pesos en efectivo.

Después de las dos jornadas laborales: el albañil que trabajó dos días tiene 4000 pesos para cobrar por jornales; el otro albañil tiene 2000; los gasistas 6000 cada uno (ambos trabajaron dos días), el plomero 3000 pesos (trabajó un día) y el electricista 7000 pesos. La obra debe en jornales 22000 pesos (la suma de lo que tiene cada obrero para cobrar).
Si se registra el pago de jornales adeudados, entonces el importe que tiene para cobrar cada obrero es de 0 pesos, y el dinero en efectivo de la obra baja a 78000 pesos.
Registro de obras de un obrero

Agregar a cada obrero una colección de las obras en las que trabajó. Al agregar un obrero a la plantilla de una obra, en ese mismo momento, hay que agregar la obra a la colección del obrero.

Requerimiento

Poder preguntar si un obrero pasó por una obra, o sea, si está entre las obras en las que trabajó. P.ej.

roque.pasoPor(obraCasaDeLucas)

Avance de una obra, tipos de obras

Para que una obra se considere finalizada deben cumplimentarse varios requisitos. En este modelo simplificado contemplamos los siguientes:

    construir 50 metros cuadrados de pared por cada habitación,
    colocar la cantidad de caños de gas que resultan de esta cuenta: (ancho + profundidad) * cantidad de pisos * 5 metros.
    colocar 180 metros de caños de agua por cada baño.
    colocar 50 metros por habitación, más 100 metros adicionales por piso, de cables.


Hay dos tipos de obra: casas y edificios. Para ambos se informa ancho y profundidad del terreno.

Para una casa se informa también: cantidad de habitaciones, cantidad de baños (que no se consideran habitaciones), cantidad de pisos.

Para un edificio se informa: cantidad de pisos, cantidad de departamentos por piso, cantidad de habitaciones por departamento, cantidad de ascensores. Para cada ascensor hay que considerar 300 metros adicionales de cable. Se asume que cada departamento tiene exactamente un baño, ni más ni menos.

Requerimientos

    Agregar al registro de una jornada laboral, el aporte que hace cada obrero. Para eso, cada obra debe llevar un acumulado de metros cuadrados construidos, y metros de caños de gas, caños de agua y cables colocados.
    Poder preguntar si una obra está terminada o no. Está terminada si el acumulado de metros cuadrados construidos supera al que corresponde a los requisitos, y lo mismo para caños de gas, caños de agua y cables.


Errores

Agregar al modelo el manejo de estos errores:

    Si se pide registrar una jornada laboral de una obra que no tiene obreros disponibles, debe generarse un error con mensaje "No hay obreros disponibles para trabajar".
    Un obrero no puede quitarse de la plantilla de una obra mientras está de licencia. Si se intenta hacer esto, debe generarse un error con mensaje "Las leyes laborales están para respetarse - licencia implica estabilidad laboral".








