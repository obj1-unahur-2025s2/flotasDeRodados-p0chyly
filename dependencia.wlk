class Dependencia{
    const rodados = []
    const cantidadEmpleados

    method agregarAFlota(rodado){rodados.add(rodado)}

    method quitarDeFlota(rodado){rodados.remove(rodado)}

    method pesoTotal() = rodados.sum({r => r.peso()})

    method estaBienEquipada() = rodados.size() >= 3 and rodados.all({r => r.velocidad() >= 100})

    method capacidadTotalEnColor(color) = rodados.filter({r => r.color() == color}).sum({r => r.capacidad()})

    method colorDelRodadoMasRapido() = rodados.max({r => r.velocidad()}).color()

    method capacidadTotal() = rodados.sum({r => r.capacidad()})

    method capacidadFaltante() = cantidadEmpleados - self.capacidadTotal()

    method esGrande() = rodados.size() >= 5 and cantidadEmpleados >= 40
}