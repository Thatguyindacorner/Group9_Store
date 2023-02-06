//
//  Item.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

class Item : IsPurchaseable{
    var id: Int
    private static var idList: [Int] = []
    
    var title: String
    var price: Double
    
    var info: String{
        
        return "\(title), \(price.printPrice())"
    }
    
    init?(id: Int, title: String, price: Double) {
        
        //allows items to be bought (owned items have the same id as store items)
        if Item.idList.contains(id) && Self.self != OwnedItem.self{
            print("""

            id #\(id) is already in use. \(Self.self) not created!

            """)
            return nil
        }
        
        if(title.isEmpty){
            print("""

            title cannot be empty. \(Self.self) not created!

            """)
            return nil
        }
        
        if(price < 0){
            print("""

            price cannot be less than 0. \(Self.self) not created!

            """)
            return nil
        }
        
        self.id = id
        //doesn't add id of copy to list (saves memory)
        if (Self.self != OwnedItem.self){
            Item.idList.append(self.id)
        }
        self.title = title
        self.price = price
        //self.info = "\(title), \(price.printPrice())"
        print("""

        \(Self.self) created with id: \(self.id)
        \(self.info)

        """)
    }
    
    func printReceipt(isRefund: Bool, amount: Double) {
        print("-------------------------")
        print("YOUR RECEIPT")
        print("-------------------------")
        if isRefund{
            //refund
            print("We are refunding the purchase of \(self.title)")
            print("Refund Amount: \(self.price.printPrice())")
            //print()
        }
        else{
            //purchase
            print("Thank you for purchasing: \(self.title)")
            print("Purchase Amount: \(self.price.printPrice())")
            //print()
        }
    }
}
