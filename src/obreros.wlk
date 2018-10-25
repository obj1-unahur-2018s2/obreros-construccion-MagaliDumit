class Obreros{
	var property licencia = true
	var diasAdeudados = 0
	method sumarDiaTrabajado() {}
}

class Albanil inherits Obreros{
	
	method consume(obra) {
		obra.restarLadrillos(100)}
}
class Plomeros inherits Obreros{
	
	method consume(obra) {
		obra.restarCanio(10) 
		obra.restarArandelas(30)
	}
} 

class Electricistas inherits Obreros{
	
	method consume(obra) {
		obra.restarCable(4)
		obra.restarCinta(1) 
	}
}

class Gasistas inherits Obreros{
	
	method consume(obra) {
		obra.restarCanio(3)
		obra.restarFosforos(20)
	}
	method aporta(obra) {
		obra.restarPared(3)
	}
}
