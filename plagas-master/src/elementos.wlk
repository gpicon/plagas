import plagas.*

class Hogar {

	var property nivelDeMugre
	var property confort

	method esBueno() {
		return nivelDeMugre <= confort / 2
	}

	method recibirAtaqueDe(bicho) {
		nivelDeMugre += bicho.nivelDeDanio()
	}

}

class Huerta {

	var property capacidadProduccion

	method esBueno() {
		return capacidadProduccion > nivel.nivelHuerta()
	}

	method recibirAtaqueDe(bicho) {
		if (bicho.transmiteEnfermedades()) {
			capacidadProduccion -= bicho.nivelDeDanio() * 0.1
		} else {
			capacidadProduccion -= bicho.nivelDeDanio()
		}
	}

}

object nivel {

	var property nivelHuerta

}

class Mascota {

	var property nivelDeSalud

	method esBueno() {
		return nivelDeSalud > 250
	}

	method recibirAtaqueDe(bicho) {
		if (bicho.transmiteEnfermedades()) {
			nivelDeSalud -= bicho.nivelDeDanio()
		}
	}

}

class Barrio {

	var property elementos = []

	method agregarElemento(unElemento) {
		elementos.add(unElemento)
	}

	method quitarElemento(unElemento) {
		elementos.remove(unElemento)
	}

	method esCopado() {
		return self.cantidadElementosBuenos() > self.cantidadElementosNoBuenos()
	}

	method cantidadElementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}

	method cantidadElementosNoBuenos() {
		return elementos.count{ e => not e.esBueno() }
	}

}

