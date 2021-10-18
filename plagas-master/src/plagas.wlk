class Plaga {

	var property poblacion

	method transmiteEnfermedades() {
		return poblacion >= 10
	}

	method atacar() {
		poblacion *= 1.10
	}

}

class Cucarachas inherits Plaga {

	var property pesoPromedio

	method nivelDeDanio() {
		return poblacion / 2
	}

	override method transmiteEnfermedades() {
		return super() and pesoPromedio >= 10
	}

	override method atacar() {
		super()
		pesoPromedio += 2
	}

}

class Pulgas inherits Plaga {

	method nivelDeDanio() {
		return poblacion * 2
	}

}

class Garrapatas inherits Pulgas {

	override method atacar() {
		poblacion *= 1.2
	}

}

class Mosquitos inherits Plaga {

	method nivelDeDanio() {
		return poblacion
	}

	override method transmiteEnfermedades() {
		return super() and poblacion % 3 == 0
	}

}

