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
    //1 Creating a customer
    print("--------------------------------1--------------------------------")
    print("let alex = Customer()")
    let alex = Customer()
    print("--------------------------------1--------------------------------\n")
    
    //2 Creating a variety of movies and games
    print("--------------------------------2--------------------------------")
    print("""
let movie1 = Movie(id: 1, title: "Free Willy", price: 5.88, runningTime: 120-8)
""")
    let movie1 = Movie(id: 1, title: "Free Willy", price: 5.88, runningTime: 120-8)
    print("""
let movie2 = Movie(id: 2, title: "Holes", price: 7.99, runningTime: 120)
""")
    let movie2 = Movie(id: 2, title: "Holes", price: 7.99, runningTime: 120)
    print("""
let movie3 = Movie(id: 3, title: "Focus", price: 13.99, runningTime: 120-16)
""")
    let movie3 = Movie(id: 3, title: "Focus", price: 13.99, runningTime: 120-16)

    print("""
let game1 = Game(id: 4, title: "Minecraft", price: 26.95, publisher: "Mojang Studios", isMultiplayer: true)
""")
    let game1 = Game(id: 4, title: "Minecraft", price: 26.95, publisher: "Mojang Studios", isMultiplayer: true)
    print("""
let game2 = Game(id: 5, title: "The Binding of Issac", price: 14.99, publisher: "Nicalis", isMultiplayer: false)
""")
    let game2 = Game(id: 5, title: "The Binding of Issac", price: 14.99, publisher: "Nicalis", isMultiplayer: false)
    print("""
let game3 = Game(id: 5, title: "The Last Of Us", price: 14.99, publisher: "Sony", isMultiplayer: true)
""")
    let game3 = Game(id: 5, title: "The Last Of Us", price: 14.99, publisher: "Sony", isMultiplayer: true)
    print("""
let game4 = Game(id: 6, title: "The Last Of Us", price: 14.99, publisher: "Sony", isMultiplayer: true)
""")
    let game4 = Game(id: 6, title: "The Last Of Us", price: 14.99, publisher: "Sony", isMultiplayer: true)
    print("--------------------------------2--------------------------------\n")
    
    //3 Creating a store and adding the movies and games to the store
    print("--------------------------------3--------------------------------")
    print("let store = Store(items: [movie1, movie2, movie3, game1, game2, game3, game4])")
    let store = Store(items: [movie1, movie2, movie3, game1, game2, game3, game4])
    print("--------------------------------3--------------------------------\n")
    
    //4 Searching for an item that exists
    print("--------------------------------4--------------------------------")
    print("""
store.findByTitle(keyword: "holes")
""")
    store.findByTitle(keyword: "holes")
    print("--------------------------------4--------------------------------\n")
    
    //5 Searching for an item that does not exist
    print("--------------------------------5--------------------------------")
    print("""
store.findByTitle(keyword: "gta")
""")
    store.findByTitle(keyword: "gta")
    print("--------------------------------5--------------------------------\n")
    
    //6 Trying to purchase an item that the customer cannot afford
    print("--------------------------------6--------------------------------")
    print("store.buyItem(customer: alex, id: 3)")
    store.buyItem(customer: alex, id: 3)
    print("--------------------------------6--------------------------------\n")
    
    //7 Reloading the customer’s gift card so they have sufficient funds
    print("--------------------------------7--------------------------------")
    print("alex.reloadAccount(amount: 60.0)")
    alex.reloadAccount(amount: 60.0)
    print("--------------------------------7--------------------------------\n")
    
    //8 Trying to purchase the same item again (now, they should be able to afford it)
    print("--------------------------------8--------------------------------")
    print("store.buyItem(customer: alex, id: 3)")
    store.buyItem(customer: alex, id: 3)
    print("--------------------------------8--------------------------------\n")
    
    //9 Purchasing an item that the user does not own
    print("--------------------------------9--------------------------------")
    print("store.buyItem(customer: alex, id: 2)")
    store.buyItem(customer: alex, id: 2)
    print("--------------------------------9--------------------------------\n")
    
    //10 Purchasing an item customer already owns
    print("--------------------------------10--------------------------------")
    print("store.buyItem(customer: alex, id: 2)")
    store.buyItem(customer: alex, id: 2)
    print("--------------------------------10--------------------------------\n")
    
    //11 Using one of the items for more than 30 minutes
    print("--------------------------------11--------------------------------")
    print("alex.useItem(id: 3, numMinutes: 40)")
    alex.useItem(id: 3, numMinutes: 40)
    print("--------------------------------11--------------------------------\n")
    
    //12 Trying to refund an item that does NOT the refund policy requirements
    print("--------------------------------12--------------------------------")
    print("store.issueRefund(customer: alex, itemId: 3)")
    store.issueRefund(customer: alex, itemId: 3)
    print("--------------------------------12--------------------------------\n")
    
    //13 Refunding an item that DOES meet the refund policy requirements
    print("--------------------------------13--------------------------------")
    print("store.issueRefund(customer: alex, itemId: 2)")
    store.issueRefund(customer: alex, itemId: 2)
    print("--------------------------------13--------------------------------")
    
    print(alex.itemsList)
    print(alex.balance)
}
