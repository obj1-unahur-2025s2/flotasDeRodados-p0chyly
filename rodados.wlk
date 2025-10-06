class Corsa{
  const color
  method color() = color
  method capacidad() = 4
  method velocidad() = 150
  method peso() = 1300
}

class Kwid{
  method color() = azul
  const tieneTanqueAdicional
  method capacidad() = if (tieneTanqueAdicional) return 3 else return 4
  method velocidad() = if (tieneTanqueAdicional) return 120 else return 110
  method peso() = 1200 + if (tieneTanqueAdicional) return 150 else return 0
}

object traffic{
  var interior = comodo
  var motor = bataton
  method color() = blanco
  method capacidad() = interior.capacidad()
  method peso() = 4000 + interior.peso() + motor.peso()
  method velocidad() = motor.velocidad()
  method cambiarMotor(nuevoMotor){
    motor = nuevoMotor
  }
    method cambiarInterior(nuevoInterior){
    interior = nuevoInterior
  }
}

object comodo{
  method peso() = 700
  method capacidad() = 5
}

object popular{
  method peso() = 1000
  method capacidad() = 12
}

object pulenta{
  method peso() = 800
  method velocidad() = 130
}

object bataton{
  method peso() = 500
  method velocidad() = 80
}

object azul{}
object blanco{}
object rojo{}

class AutoEspecial{
  var property capacidad
  var property velocidad
  const peso
  const color
  method peso() = peso
  method color() = color
}