//
//  Logger.swift
//  AplicacionParcial_Carring
//
//  Created by spychatter mx on 12/19/17.
//  Copyright © 2017 spychatter. All rights reserved.
//

import UIKit

enum TypeError: String{
	case serverError =  "Server Error"
	case notInternetconnection = "Not internt Connection"
}

protocol Addable {
	static func +(lhs: Self, rhs: Self) -> Self
}
protocol Multi{
	static func *(lhs: Self, rhs: Self) -> Self
}


extension Int: Addable,Multi {}
extension Double: Addable,Multi {}
extension Float: Addable,Multi {}
extension String: Addable{}

enum Operadores {
	case multi
	case dividr
	case sumar
	case restar
}
class Logger: UIViewController{
	
	var setedNumber = "Gandhi"
	override func viewDidLoad() {
		super.viewDidLoad()
	
		//operacionLogger(message: logger2(level: TypeError.serverError.rawValue))
		
		let sumStrings = SumResult(completion: add(a: "Hola "))("Mundo")
		print(sumStrings)
		
		let sumNumbersDouble = SumResult(completion: add(a: 2.5))(4.6)
		print(sumNumbersDouble)
		let sumbNumberInt = SumResult(completion: add(a: 5))(2)
		print(sumbNumberInt)
		
		let multNumbers = SumResult(completion: multplicar(a: 5))(5)
		print(multNumbers)
		
		

//		let addTwo = add2(a: 2)
//		let xs = 1...100
//		let x = xs.map(addTwo)
		//print(x)
		
		
	}
	
	//String -> String
	func logger1(numero: String) -> String{
		return numero
	}
	
	func logger2(level:String) -> (String) -> Void{

		return { message in
			print("Level: \(level), Message: \(message)")
		}
	}

	func operacionLogger(message: (String) -> Void){

		return message("Error")
	}
	
	func myAdd(a: Int) -> Int{
		return a
	}
	

	
	
	func SumResult<T>(completion: @escaping (T) -> T) -> (T) -> T{
		
		return { b in completion(b) }
	}
	
	func add<A: Addable>(a:A) -> (A) -> A{
		return { b in
			a + b
		}
	}
	
	func multplicar<A: Multi>(a:A) -> (A) -> A{
		return { b in
			a * b
		}
	}

}
