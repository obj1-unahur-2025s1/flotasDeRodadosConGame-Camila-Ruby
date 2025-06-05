
import wollok.game.*
class ChevroletCorsa {
  const property capacidad = 4
  const property velocidadMaxima =  150
  const property peso = 1300
  var property color
  var property position = game.origin()
  method initialize(){
    if(not colores.validos().contains(color)){
      self.error(color.toString() + " no se encuentra entre los colores válidos")
    }
  } 
  
  method image() = color.image()
  
}

class RenaultKwid {
  const property tanqueAdicional

  method capacidad(){
    if(tanqueAdicional){
      return 3
    }else{
      return 4
      } 
  } 

  method velocidadMaxima(){
    if(tanqueAdicional){
      return 120
    }else{
      return 110
      } 
  } 
  method peso(){
    if(tanqueAdicional){
      return 1350
    }else{
      return 1200
      } 
  } 

  method color() = "Azul"
}

object trafic {
  var property interior = comodo
  var property motor = pulenta

  method capacidad() = interior.capacidad()
  method velocidadMaxima() = motor.velocidadMaxima()
  method peso() = motor.peso() + interior.peso() + 4000
}
//Interiores de la trafic
object comodo {
  method capacidad() = 5
  method peso() = 700
}
object popular {
  method capacidad() = 12
  method peso() = 1000
}
//Motores de la trafic
object pulenta {
  method velocidadMaxima() = 130
  method peso() = 800
}
object bataton {
  method velocidadMaxima() = 80
  method peso() = 500
}

class AutoEspecial{
  const property capacidad
  const property velocidadMaxima
  const property peso
  const property color   
}

//Colores validos
object colores {
  method validos() = #{"Rojo", "Verde", "Azul", "Negro", "Beige", rojo, verde, azul}
}


object rojo {
    method image() { return "autitorojo.png" } 
}

object azul { 
    method image() { return "autitoAzul.png" }
}
object verde { 
    method image() { return "autitoVerde.png" }
}