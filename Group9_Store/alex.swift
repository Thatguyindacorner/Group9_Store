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
    var alex = Customer()
    //2
    let movie1 = Movie(id: 1, title: "Free Willy", price: 5.88, runningTime: 120-8)
    let movie2 = Movie(id: 2, title: "Holes", price: 7.99, runningTime: 120)
    let movie3 = Movie(id: 3, title: "Focus", price: 13.99, runningTime: 120-16)

    let game1 = Game(id: 4, title: "Minecraft", price: 26.95, publisher: "Mojang Studios", isMultiplayer: true)
    let game2 = Game(id: 5, title: "The Binding of Issac", price: 14.99, publisher: "Nicalis", isMultiplayer: false)
    let game3 = Game(id: 6, title: "The Last Of Us", price: 14.99, publisher: "Sony", isMultiplayer: true)
    //3
    var store = Store(items: [movie1, movie2, movie3, game1, game2, game3])
    //4
    print(store.findByTitle(keyword: "holes"))
    //5
    print(store.findByTitle(keyword: "gta"))
    //6
    store.buyItem(customer: alex, id: 3)
    //7
    alex.reloadAccount(amount: 10.0)
    //8

    //9

    //10

    //11

    //12

    //13
}
