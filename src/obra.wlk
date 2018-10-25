import obreros.*

class Obra {
	var property ladrillos = 0
	var property arandelas = 0 
	var property canio = 0
	var property cinta = 0
	var property cable = 0
	var property fosforos = 0
	var pared = 0
	var obreros = []

	method agregarObreros(obrero){ obreros.add(obrero) }
	method paredLevantada(cantidadDeLadrillos) {ladrillos =- cantidadDeLadrillos}
	/*method instalacionDeAgua(metrosDeCanios)
	method instalacionElectrica(metrosDeCable)
	method instalacionDeGas(metrosDeCano)*/
	method obrerosDisponbles() {
		obreros.filter(obrero=> not obrero.licencia())
	} 
	method registrarJornada(obrero){ 
		self.obrerosDisponbles().forEach( obrero => obrero.consume(self)
	}    
	method restarCanio(n) { canio = canio - n  }
	method restarArandelas(n){ arandelas = arandelas - n }
	method restarLadrillos(n) { ladrillos = ladrillos - n }
	method restarCinta(n) { cinta = cinta - n }
	method restarCable(n) { cable = cable - n } 
	method restarFosforos(n) { fosforos = fosforos - n }
	
	
	
	
	
	
}
