//
//  Conector.swift
//  AplicacionParcial_Carring
//
//  Created by spychatter mx on 12/14/17.
//  Copyright © 2017 spychatter. All rights reserved.
//

//Aplicacion parcial de funciones

//Es una funcion que en lugar de recibir muchos parámetros, va a recibir 1 parámetro y va a retornar otra funcion que recibirá un parametro y retornará otra funcion y así hasta que hayamos completado todos los parámetros y la ultima función es la que realizará toda la operación.
// El funcionamiento de esto es ir dejando fijados parámetros en el camino y que nuestra ultima fucnión las consuma

import UIKit


class Conector{
	
	func conectar(host: String, puerto: Int){
		//Aquí metemos nuestra lógica de conexión
	}
	
	func conectar(host:String){
		conectar(host: host, puerto: 80)
	}
	
	func conectar(){
		//conectar(host: "LocalHost")
	}
	
	//(String) -> (Int) -> ((Void)-> (Void)) //Funcion currificada
	func conectar(host: String) -> (Int) -> (() -> Void) {
		
		return { puerto in
			return {
				print("\(host) \(puerto)")
				//Aqui metemos nuestra lógica de conexión
			}
		}
	}
	
	
}
