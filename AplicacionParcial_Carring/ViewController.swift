//
//  ViewController.swift
//  AplicacionParcial_Carring
//
//  Created by spychatter mx on 12/14/17.
//  Copyright © 2017 spychatter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		let myhost = conectar(host: "miHost")
		let myPort80 = myhost(80)
		let myport8080 = myhost(8080)
		let portAndSSL = myhost(80)(true)
		print(portAndSSL)
	}
	
	//(String) -> (Int) -> ((Void)-> (Void)) //Funcion currificada
	func conectar(host: String) -> (Int) -> (Bool) -> (() -> Void) {
		
		return { puerto in
			return { useSSL in
				return {
			
				}
			}
		}
	}

	
	
}

