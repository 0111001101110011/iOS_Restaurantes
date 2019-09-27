//
//  ViewController.swift
//  iOSRestaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestaurante : UIViewController {
    
    var restaurante : Restaurante?
    
    
    @IBOutlet weak var lblTelefono: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!

    
    override func viewDidLoad() {
        
        self.title = restaurante!.nombre
        
        lblDireccion.text = restaurante!.direccion
        lblTelefono.text = restaurante!.telefono
        lblDescripcion.text = restaurante!.descripcion
    }
    
}
