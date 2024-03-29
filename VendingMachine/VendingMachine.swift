//
//  VendingMachine.swift
//  VendingMachine
//
//  Created by Screencast on 12/6/16.
//  Copyright © 2016 Treehouse Island, Inc. All rights reserved.
//

import Foundation

enum VendingSelection {
    case soda
    case dietSoda
    case chips
    case cookie
    case sandwich
    case wrap
    case candyBar
    case popTart
    case water
    case fruitJuice
    case sportsDrink
    case gum
}

protocol VendingItem {
    var price: Double {get}
    var quantity: Int {get set}
}

protocol VendingMachine {
    var selection: [VendingSelection] { get }
    var inventory: [VendingSelection: VendingItem] {get set}
    var amountDeposited : Double {get set}
    
    init(inventory: [VendingSelection: VendingItem])
    func vend(_ quantity: Int, _ selection: VendingSelection) throws
    func deposit(_ amount: Double)
}

struct Item: VendingItem {
    let price: Double
    var quantity: Int
}

class PlistConverter {

    static func dictionary(fromFile name: String, ofType type: String) throws -> [String: AnyObject]{
        guard let path = Bundle.main.path(forResource: name, ofType: type) else {
            
        }
    }
}

class FoodVendingMachine: VendingMachine {
    var selection: [VendingSelection] =
        [.soda, .dietSoda, .chips, .candyBar, .cookie, .sandwich, .fruitJuice,
         .gum, .wrap, .popTart, .water, .sportsDrink]
    
    var inventory: [VendingSelection : VendingItem]
    
    var amountDeposited: Double = 10.0
    
    required init(inventory: [VendingSelection : VendingItem]) {
        self.inventory = inventory
    }
    
    func vend(_ quantity: Int, _ selection: VendingSelection) throws {
        <#code#>
    }
    
    func deposit(_ amount: Double) {
        <#code#>
    }
    
    
}









































