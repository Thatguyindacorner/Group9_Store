//
//  Item.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

class Item : IsPurchaseable{
    var id: Int
    var title: String
    var price: Double
    
    var info: String
    
    init(id: Int, title: String, price: Double) {
        self.id = id
        self.title = title
        self.price = price
        self.info = "\(title), $\(price)"
    }
    
    func printReceipt(isRefund: Bool, amount: Double) {
        if isRefund{
            //refund
        }
        else{
            //purchase
        }
    }
}
