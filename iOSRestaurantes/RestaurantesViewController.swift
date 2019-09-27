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
    
    @IBOutlet weak var tableViewController: UITableView!
    override func viewDidLoad() {
        restaurantes.append(Restaurante(nombre: "La Hacienda", direccion: "Veracruz #243", telefono: "6871563409", descripcion: "Mariscos"))
        
         restaurantes.append(Restaurante(nombre: "Mariscos Soto", direccion: "BLVD. 16 de Septiembre 766", telefono: "6871263409", descripcion: "Por Concepto"))
    
        restaurantes.append(Restaurante(nombre: "Netza's Wings", direccion: "Potam #212", telefono: "6871543409", descripcion: "Familiar"))
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallesRestaurante"
        {
            let destino = segue.destination as? DetallesRestaurante
            destino?.restaurante = restaurantes[tableViewController.indexPathForSelectedRow!.row]
        }
    }
}
