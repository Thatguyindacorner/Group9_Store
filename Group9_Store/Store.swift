//
//  Store.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

class Store{
    //i think items should be static cause we dont want to initlaize a store
    //but we are gonna follow assignment
    var items: [Item]
    
    init(items: [Item]) {
        self.items = items
    }
    
    func buyItem(customer: Customer, id: Int){
        //conditions
    }
    
    func issueRefund(customer: Customer, id: Int){
        //conditions
    }
    
    func findByTitle(keyword: String){
        //conditions
    }
    
}
