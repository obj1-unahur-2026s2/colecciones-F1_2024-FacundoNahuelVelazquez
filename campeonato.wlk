import pilotos.*
import escuderias.*
import neumaticos.*

object campeonato {
	var pilotosRegistrados = []

	method registrarPiloto(unPiloto) {
		pilotosRegistrados.add(unPiloto)
	}

	method darDeBajaPiloto(unPiloto) {
		pilotosRegistrados.remove(unPiloto)
	}

	method registrarCierreFecha(primero, segundo, mejorVuelta) {
		primero.ganar(segundo)
		mejorVuelta.hizoVueltaRapida()
		pilotosRegistrados.filter { p => p != primero }.forEach { p => p.noGano() }
	}

	method pilotoLider() = pilotosRegistrados.max { p => p.puntos() }

	method puntosPorEscuderia(unaEscuderia) =
		pilotosRegistrados.filter { p => p.escuderia() == unaEscuderia }.sum { p => p.puntos() }

	method deltaPuntos() =
		pilotosRegistrados.map { p => p.puntos() }.max() - pilotosRegistrados.map { p => p.puntos() }.min()

	method esCompetitivo() = self.deltaPuntos() < 100

	method hayPilotoDeEscuderia(unaEscuderia) = pilotosRegistrados.any { p => p.escuderia() == unaEscuderia }
}