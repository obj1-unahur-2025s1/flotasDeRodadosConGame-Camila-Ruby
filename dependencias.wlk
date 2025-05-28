import rodados.*

class Dependencia {
    const property flotaDeRodados = []
    const property cantidadEmpleados
    const property pedidos = []

    method agregarAFlota(unRodado){flotaDeRodados.add(unRodado)}
    method quitarDeAFlota(unRodado){flotaDeRodados.remove(unRodado)}

    method pesoTotalFlota() = flotaDeRodados.sum({r => r.peso()})
    method estaBienEquipada() = flotaDeRodados.size() > 3 && flotaDeRodados.all({r => r.velocidadMaxima() >= 100 })
    method capacidadTotalEnColor(color){ flotaDeRodados.filter({r => r.color() == color}).sum({r => r.capacidad()}) }
    method colorDeRodadoMasRapido() = flotaDeRodados.max({r => r.velocidadMaxima()}).color()
    method capacidadFaltante() = cantidadEmpleados - flotaDeRodados.sum({r => r.capacidad()})
    method esGrande() = cantidadEmpleados >= 40 && flotaDeRodados.size() >= 5
    
    method agregarPedido(unPedido){ pedidos.add(unPedido)}
    method quitarPedido(unPedido){ pedidos.remove(unPedido) }

    method totalPasajerosParaPedidos() = pedidos.sum({p => p.cantidadPasajeros()})
    method sePuedeSatisfacer(unPedido) = flotaDeRodados.any({r => unPedido.autoPuedeSatisfacer(r)})
    method pedidosNoSactifactorios() = pedidos.filter({p => !self.sePuedeSatisfacer(p)})
    method esColorIncompatibleGlobal(unColor)= pedidos.all({p => p.coloresIncompatibles().contains(unColor)})

}