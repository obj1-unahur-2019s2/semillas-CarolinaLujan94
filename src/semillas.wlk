class Planta {
	var property anioDeObtencion
	var property altura
		
	method horasDeSol() 
	method daNuevasSemillas()  
	method espacioQueOcupa() 		
	method esFuerte() { return self.horasDeSol() >=10 }
}

class Menta inherits Planta {
	
	override method horasDeSol() { return 6 }
	override method daNuevasSemillas() { return altura > 0.4 and super() } 
	override method espacioQueOcupa() { return altura * 3 }
}

class Soja inherits Planta {
	
	override method horasDeSol() { 
		if (altura <= 0.5) { return 6 }
		else if (altura.between(0.5, 1)) { return 7 } 
		else altura >= 1 { return 9 } }  
	override method daNuevasSemillas() { return altura > 1 and anioDeObtencion > 2007 }
	override method espacioQueOcupa() { return altura / 2 }
	
}

class Quinoa inherits Planta {
	var property horasDeSol
	
	override method daNuevasSemillas() { return anioDeObtencion < 2005 or super() }
	override method espacioQueOcupa() { return 0.5 }	
	
}

class SojaTransgenica {

	method daNuevasSemilla() = false
}

class Hierbabuena {
	
	method espacioQueOcupa() { return new Menta().espacioQueOcupa() * 2 }	
}

