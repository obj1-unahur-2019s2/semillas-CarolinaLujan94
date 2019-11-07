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
	var anio = 0
	var property metros
	
	override method horasDeSol() { 
		if (metros.between(0.5, 1)) { return 7 } 
		else metros >= 1 { return 9 } }  
	override method daNuevasSemillas() { return altura > 1 and anio > 2007 }
	override method espacioQueOcupa() { return altura / 2 }
	
}

class Quinoa inherits Planta {
	var anio = 0
	
	override method horasDeSol() { return 10 }
	override method daNuevasSemillas() { return anio < 2005 or super() }
	override method espacioQueOcupa() { return 0.5 }	
	
}

class SojaTransgenica {

	method daNuevasSemilla() = false
}

class Hierbabuena {
	
	method espacioQueOcupa() { return new Menta().espacioQueOcupa() * 2 }	
}

