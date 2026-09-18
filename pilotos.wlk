import escuderias.*
import neumaticos.*

object verstappen {
	var puntosActuales = 437
	const escuderiaActual = redBull
	var neumaticoActual = medio                                                                                                   
	var vueltasActuales = 0

	method puntos() = puntosActuales
	method escuderia() = escuderiaActual

	method sumarPuntos(cantidad) {
		puntosActuales = puntosActuales + cantidad
	}
	method restarPuntos(cantidad) {
		puntosActuales = (puntosActuales - cantidad).max(0)
	}

	method sumarUnaVuelta() {
		vueltasActuales = vueltasActuales + 1
	}
	method vueltasQueLeQuedan() = (neumaticoActual.duracion() - vueltasActuales).max(0)
	method entrarAlPitStop(nuevoNeumatico) {
		neumaticoActual = nuevoNeumatico
		vueltasActuales = 0
	}

	method ganar(segundoLugar) {
		self.sumarPuntos(25)
	}

	method hizoVueltaRapida() {
		if (puntosActuales > 200) {
			self.sumarPuntos(1)
		}
	}

	method noGano() {
		// no le afecta perder
	}
}

object norris {
	var puntosActuales = 374
	const escuderiaActual = mclaren
	var neumaticoActual = medio
	var vueltasActuales = 0

	method puntos() = puntosActuales
	method escuderia() = escuderiaActual

	method sumarPuntos(cantidad) {
		puntosActuales = puntosActuales + cantidad
	}
	method restarPuntos(cantidad) {
		puntosActuales = (puntosActuales - cantidad).max(0)
	}

	method sumarUnaVuelta() {
		vueltasActuales = vueltasActuales + 1
	}
	method vueltasQueLeQuedan() = (neumaticoActual.duracion() - vueltasActuales).max(0)
	method entrarAlPitStop(nuevoNeumatico) {
		neumaticoActual = nuevoNeumatico
		vueltasActuales = 0
	}

	method ganar(segundoLugar) {
		self.sumarPuntos(25)
		if (segundoLugar.escuderia() == self.escuderia()) {
			segundoLugar.sumarPuntos(3)
		}
	}

	method hizoVueltaRapida() {
		if (puntosActuales > 200) {
			self.sumarPuntos(1)
		}
	}

	method noGano() {
		// no le afecta perder
	}
}

object sainz {
	var puntosActuales = 241
	const escuderiaActual = ferrari
	var neumaticoActual = medio
	var vueltasActuales = 0
	var ganoLaCarreraAnterior = false

	method puntos() = puntosActuales
	method escuderia() = escuderiaActual

	method sumarPuntos(cantidad) {
		puntosActuales = puntosActuales + cantidad
	}
	method restarPuntos(cantidad) {
		puntosActuales = (puntosActuales - cantidad).max(0)
	}

	method sumarUnaVuelta() {
		vueltasActuales = vueltasActuales + 1
	}
	method vueltasQueLeQuedan() = (neumaticoActual.duracion() - vueltasActuales).max(0)
	method entrarAlPitStop(nuevoNeumatico) {
		neumaticoActual = nuevoNeumatico
		vueltasActuales = 0
	}

	method ganar(segundoLugar) {
		self.sumarPuntos(25)
		if (ganoLaCarreraAnterior) {
			self.sumarPuntos(10)
		}
		ganoLaCarreraAnterior = true
	}

	method hizoVueltaRapida() {
		// no le suma nada
	}

	method noGano() {
		ganoLaCarreraAnterior = false
	}
}

object leclerc {
	var puntosActuales = 356
	const escuderiaActual = ferrari
	var neumaticoActual = medio
	var vueltasActuales = 0

	method puntos() = puntosActuales
	method escuderia() = escuderiaActual

	method sumarPuntos(cantidad) {
		puntosActuales = puntosActuales + cantidad
	}
	method restarPuntos(cantidad) {
		puntosActuales = (puntosActuales - cantidad).max(0)
	}

	method sumarUnaVuelta() {
		vueltasActuales = vueltasActuales + 1
	}
	method vueltasQueLeQuedan() = (neumaticoActual.duracion() - vueltasActuales).max(0)
	method entrarAlPitStop(nuevoNeumatico) {
		neumaticoActual = nuevoNeumatico
		vueltasActuales = 0
	}

	method ganar(segundoLugar) {
		self.sumarPuntos(25)
		segundoLugar.restarPuntos(3)
	}

	method hizoVueltaRapida() {
		self.sumarPuntos(2)
	}

	method noGano() {
		// no le afecta perder
	}
}

object piastri {
	var puntosActuales = 292
	const escuderiaActual = mclaren
	var neumaticoActual = medio
	var vueltasActuales = 0

	method puntos() = puntosActuales
	method escuderia() = escuderiaActual

	method sumarPuntos(cantidad) {
		puntosActuales = puntosActuales + cantidad
	}
	method restarPuntos(cantidad) {
		puntosActuales = (puntosActuales - cantidad).max(0)
	}

	method sumarUnaVuelta() {
		vueltasActuales = vueltasActuales + 1
	}
	method vueltasQueLeQuedan() = (neumaticoActual.duracion() - vueltasActuales).max(0)
	method entrarAlPitStop(nuevoNeumatico) {
		neumaticoActual = nuevoNeumatico
		vueltasActuales = 0
	}

	method ganar(segundoLugar) {
		self.sumarPuntos(25)
	}

	method hizoVueltaRapida() {
		// no tiene efectos especiales
	}

	method noGano() {
		// no le afecta perder
	}
}