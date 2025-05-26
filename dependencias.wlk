import rodados.*

class Dependencia {
    const property flotaDeRodados = []
    const property cantidadEmpleados

    method agregarAFlota(unRodado){flotaDeRodados.add(unRodado)}
    method quitarDeAFlota(unRodado){flotaDeRodados.remove(unRodado)}

    method pesoTotalFlota() = flotaDeRodados.sum({r => r.peso()})
    method estaBienEquipada() = flotaDeRodados.size() > 3 && flotaDeRodados.all({r => r.velocidadMaxima() >= 100 })
    method capacidadTotalEnColor(color){ flotaDeRodados.filter({r => r.color() == color}).sum({r => r.capacidad()}) }
    method colorDeRodadoMasRapido() = flotaDeRodados.max({r => r.velocidadMaxima()}).color()
    method capacidadFaltante() = cantidadEmpleados - flotaDeRodados.sum({r => r.capacidad()})
    method esGrande() = cantidadEmpleados >= 40 && flotaDeRodados.size() >= 5
}