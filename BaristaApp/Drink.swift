//
//  Drink.swift
//  BaristaApp
//
//  Created by GABRIELA AVILA on 4/16/24.
//

import Foundation
public class Drink: Codable{
    
    var name : String
    var syrup : String
    var milk : String
    var other : String
    //var drinks = [Drink]()
    
    init(name: String, syrup: String, milk: String, other: String) {
        self.name = name
        self.syrup = syrup
        self.milk = milk
        self.other = other
    }
    
}
