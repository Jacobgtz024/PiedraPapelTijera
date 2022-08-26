//
//  ViewController.swift
//  PPT2
//
//  Created by Arturo Jacob Gutiérrez on 23/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tuEleccion: UILabel!
    @IBOutlet weak var eleccionComputadora: UILabel!
    @IBOutlet weak var ganador: UILabel!
    
    
    @IBOutlet weak var Piedra: UIButton!
    @IBOutlet weak var Papel: UIButton!
    @IBOutlet weak var Tijera: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    enum Intento: String {
        case Piedra = "🪨"
        case Papel = "🧻"
        case Tijera = "✂️"
    }
    
    enum Ganador: String {
        case usuario = "Has ganado, eres un ganador!"
        case computadora = "La computadora ganó, eres un perdedor!"
        case empate = "Esto ha sido un empate!"
    }
    
    let Intentos:[Intento] = [.Piedra, .Papel, .Tijera]

    @IBAction func intentoUsuario(_ sender: UIButton) {
        let BotonP = sender.tag
        switch BotonP {
        case 1:
            ganador.text = (quienGana(usuario: .Piedra, computadora: intentoComputadora())).rawValue
        case 2:
            ganador.text = (quienGana(usuario: .Papel, computadora: intentoComputadora())).rawValue
        case 3:
            ganador.text = (quienGana(usuario: .Tijera, computadora: intentoComputadora())).rawValue
        default:
            print("Se presionó un botón desconocido")
        }
    }
    
    func intentoComputadora() -> Intento {
        return Intentos.randomElement()!
    }
    
    func quienGana(usuario: Intento, computadora: Intento) -> Ganador {
        tuEleccion.text = "Tú eleccion fue: \(usuario.rawValue)"
        eleccionComputadora.text = "La eleccion de la computadora fue: \(computadora.rawValue)"
        
        switch usuario {
        case .Piedra:
            if computadora == .Papel {
                return .computadora
            }
            else if computadora == .Tijera {
                return .usuario
            }
            else {
                return .empate
            }
        case .Papel:
            if computadora == .Tijera {
                return .computadora
            }
            else if computadora == .Piedra {
                return .usuario
            }
            else {
                return .empate
            }
        case .Tijera:
            if computadora == .Piedra {
                return .computadora
            }
            else if computadora == .Papel {
                return .usuario
            }
            else {
                return .empate
            }
        }
    }
    
}

