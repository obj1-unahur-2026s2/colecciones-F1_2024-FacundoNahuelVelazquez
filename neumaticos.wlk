
object blando {
	method duracion() = 15
	method rindeMejorEnTemperatura(temperatura) = temperatura < 25
}

object medio {
	method duracion() = 30
	method rindeMejorEnTemperatura(temperatura) = temperatura >= 25 && temperatura <= 40
}

object duro {
	method duracion() = 45
	method rindeMejorEnTemperatura(temperatura) = temperatura > 40
}