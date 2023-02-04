//
//  Item.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

extension Double{
    
    func printPrice()->String{
        return "$\(self)"
    }
    
}

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
            print("-------------------------------------")
            print("YOUR RECEIPT")
            print("-------------------------------------")
            print("We are refunding the purchase of \(self.title)")
            print("Refund Amount: $\(self.price.printPrice())")
            print()
        }
        else{
            //purchase
            print("-------------------------------------")
            print("YOUR RECEIPT")
            print("-------------------------------------")
            print("Thank you for purchasing: \(self.title)")
            print("Purchase Amount: \(self.price.printPrice())")
            print()
        }
    }
}
