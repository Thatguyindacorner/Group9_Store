//
//  alex.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

//I'll do testing here
func alexCode()
{
    //1
    print("--------------------------------1--------------------------------")
    let alex = Customer()
    print("--------------------------------1--------------------------------\n")
    
    //2
    print("--------------------------------2--------------------------------")
    let movie1 = Movie(id: 1, title: "Free Willy", price: 5.88, runningTime: 120-8)
    let movie2 = Movie(id: 2, title: "Holes", price: 7.99, runningTime: 120)
    let movie3 = Movie(id: 3, title: "Focus", price: 13.99, runningTime: 120-16)

    let game1 = Game(id: 4, title: "Minecraft", price: 26.95, publisher: "Mojang Studios", isMultiplayer: true)
    let game2 = Game(id: 5, title: "The Binding of Issac", price: 14.99, publisher: "Nicalis", isMultiplayer: false)
    let game3 = Game(id: 6, title: "The Last Of Us", price: 14.99, publisher: "Sony", isMultiplayer: true)
    print("--------------------------------2--------------------------------\n")
    
    //3
    print("--------------------------------3--------------------------------")
    let store = Store(items: [movie1, movie2, movie3, game1, game2, game3])
    print("--------------------------------3--------------------------------\n")
    
    //4
    print("--------------------------------4--------------------------------")
    store.findByTitle(keyword: "Holes")
    print("--------------------------------4--------------------------------\n")
    
    //5
    print("--------------------------------5--------------------------------")
    store.findByTitle(keyword: "gta")
    print("--------------------------------5--------------------------------\n")
    
    //6
    print("--------------------------------6--------------------------------")
    store.buyItem(customer: alex, id: 3)
    print("--------------------------------6--------------------------------\n")
    
    //7
    print("--------------------------------7--------------------------------")
    alex.reloadAccount(amount: 60.0)
    print("--------------------------------7--------------------------------\n")
    
    //8
    print("--------------------------------8--------------------------------")
    store.buyItem(customer: alex, id: 3)
    print("--------------------------------8--------------------------------\n")
    
    //9
    print("--------------------------------9--------------------------------")
    store.buyItem(customer: alex, id: 2)
    print("--------------------------------9--------------------------------\n")
    
    //10
    print("--------------------------------10--------------------------------")
    store.buyItem(customer: alex, id: 2)
    print("--------------------------------10--------------------------------\n")
    
    //11
    print("--------------------------------11--------------------------------")
    alex.useItem(id: 3, numMinutes: 40)
    print("--------------------------------11--------------------------------\n")
    
    //12
    print("--------------------------------12--------------------------------")
    store.issueRefund(customer: alex, itemId: 3)
    print("--------------------------------12--------------------------------\n")
    
    //13
    print("--------------------------------13--------------------------------")
    store.issueRefund(customer: alex, itemId: 2)
    print("--------------------------------13--------------------------------")
    
    print(alex.itemsList)
}
