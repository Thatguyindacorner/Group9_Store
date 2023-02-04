//
//  Customer.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

class Customer{
    var itemsList: [OwnedItem] = []
    var balance: Double
    
    init(){
        self.balance = 10.00
        print("New Customer created with balance: \(self.balance)")
    }
    
    init(balance: Double) {
        self.balance = balance
        print("New Customer created with balance: \(self.balance)")
    }
    
    func reloadAccount(amount: Double){
        //needs to be positive
        if amount > 0{
            self.balance += amount
        }
        else{
            print("Not a valid amount")
        }
    }
    
    func useItem(id: Int, numMinutes: Int){
        //find item in list with id
        //numMinutes need to be positive
        if numMinutes > 0{
            for item in itemsList {
                if item.id == id{
                    item.minutesUsed += numMinutes
                    print("Search Success")
                    break
                }
            }
        }
        else{
            print("Not a valid time")
        }
        
    }

}
