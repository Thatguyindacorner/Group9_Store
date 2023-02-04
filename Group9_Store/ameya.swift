//
//  ameya.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

extension Customer{
    
    func iterateList(){
        
        for item in self.itemsList{
            print("title: \(item.title), Price: \(item.price)")
        }
        print()
    }
    
}

//You can do testing here

func ameyaCode(){
    //do code in here
    
    let peter = Customer()
    
    
    let movie1 = Movie(id: 1, title: "John Wick", price: 5.88, runningTime: 100)
    let movie2 = Movie(id: 2, title: "Top Gun:Maverick", price: 7.99, runningTime: 94)
    
    let game1 = Game(id: 4, title: "Minecraft", price: 26.95, publisher: "Mojang Studios", isMultiplayer: true)
    let game2 = Game(id: 5, title: "The Binding of Issac", price: 14.99, publisher: "Nicalis", isMultiplayer: false)
    let game3 = Game(id: 6, title: "The Last Of Us", price: 14.99, publisher: "Sony", isMultiplayer: true)
    
    let store = Store(items: [movie1, movie2, game1, game2, game3])
    
    peter.reloadAccount(amount: 50.0)
    
    store.buyItem(customer: peter, id: 1)
    
    store.buyItem(customer: peter, id: 7)
    
    store.buyItem(customer: peter, id: 6)
    
    peter.useItem(id: 1, numMinutes: 20)
    
    store.issueRefund(customer: peter, itemId: 1)
    
    peter.iterateList()
    
    peter.useItem(id: 6, numMinutes: 40)
    
    store.issueRefund(customer: peter, itemId: 6)
    
    store.findByTitle(keyword: "last")
    
}
