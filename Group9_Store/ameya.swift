//
//  ameya.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

func ameyaCode(){
    //do code in here

    let peter = Customer()


    let movie1 = Movie(id: 1, title: "John Wick", price: 5.88, runningTime: 100)
    let movie2 = Movie(id: 2, title: "Top Gun:Maverick", price: 7.99, runningTime: 94)

    let game1 = Game(id: 4, title: "Minecraft", price: 26.95, publisher: "Mojang Studios", isMultiplayer: true)
    let game2 = Game(id: 5, title: "The Binding of Issac", price: 14.99, publisher: "Nicalis", isMultiplayer: false)!
    let game3 = Game(id: 6, title: "The Last Of Us", price: 14.99, publisher: "Sony", isMultiplayer: true)!

    let store = Store(items: [movie1, movie2, game1, game2, game3])

    peter.reloadAccount(amount: 50.0)

    store.buyItem(c: peter, itemId: 1)

    store.buyItem(c: peter, itemId: 7)

    store.buyItem(c: peter, itemId: 6)

    peter.useItem(id: 1, numMinutes: 20)

    store.issueRefund(c: peter, itemId: 1)

    peter.iterateList()

    peter.useItem(id: 6, numMinutes: 40)

    store.issueRefund(c: peter, itemId: 6)

    store.findByTitle(keyword: "last")

    store.items.append(Game(id: 8, title: "Cyberpunk 2077", price: 24.3405, publisher: "CDProject Red", isMultiplayer: false)!)

    store.items.append(Game(id: 9, title: "The Last of Us 2", price: 32.50, publisher: "Sony", isMultiplayer: false)!)

    store.findByTitle(keyword: "last")

    store.buyItem(c: peter, itemId: 8)

    store.buyItem(c: peter, itemId: 9)

    peter.iterateList()

    peter.balanceInfo()

    print()

}
