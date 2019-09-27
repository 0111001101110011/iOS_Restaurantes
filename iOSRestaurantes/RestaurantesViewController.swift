//
//  ViewController.swift
//  iOSRestaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class RestaurantesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantes : [Restaurante] = []
    
    override func viewDidLoad() {
        restaurantes.append(Restaurante(nombre: "Thrifty", direccion: "Paseo de la Floresta 59", telefono: "6622971893", descripcion: "Heladería"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante")
        
        celda?.textLabel?.text = restaurantes[indexPath.row].nombre

        return celda!
    }
}
