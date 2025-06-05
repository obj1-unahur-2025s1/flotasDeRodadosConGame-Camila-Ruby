import rodados.*
import dependencias.*


class Pedido {
    const property distancia
    var tiempoMaximo
    var property cantidadPasajeros 
    const property nombre
    const property coloresIncompatibles = #{}


    method agregarColorIncompatible(unColor){ coloresIncompatibles.add(unColor)}
    method velocidadRequerida() = distancia / tiempoMaximo
    method autoPuedeSatisfacer(unAuto){
        return unAuto.velocidadMaxima() > (self.velocidadRequerida() + 10) &&
        unAuto.capacidad() >= self.cantidadPasajeros() &&
        !coloresIncompatibles.contains(unAuto.color())
    }
    method acelerar(){ tiempoMaximo -= 1 }
    method relajar(){ tiempoMaximo += 1 }
}