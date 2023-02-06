//
//  Game.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

//extension Bool{
//
//    func printMultiplayer(game:Game)->String{
//        if(game.isMultiplayer){
//            return "Yes"
//        }else{
//            return "No"
//        }
//    }
//
//}

class Game: Item {
    var publisher: String
    var isMultiplayer : Bool
    
    init?(id: Int, title: String, price: Double, publisher: String, isMultiplayer: Bool) {
        self.publisher = publisher
        self.isMultiplayer = isMultiplayer
        super.init(id: id, title: title, price: price)
        self.info = super.info + "\nPublisher: \(publisher)\nIs Multiplayer: \(isMultiplayer)"
    }
}
