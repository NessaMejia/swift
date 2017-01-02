//Velocimetro de un auto digital

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades) {
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad:Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad()->(actual:Int, velocidadEnCadena:String){
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            return (0, "Apagado")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (20, "Velocidad Baja")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (50, "Velocidad Media")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (120, "Velocidad Alta")
        }
    }
}

var auto = Auto()

var resultado:(Int, String)

for i in 0 ... 19 {
    resultado = auto.cambioDeVelocidad()
    print("\(resultado.0), \(resultado.1) \n")
}
