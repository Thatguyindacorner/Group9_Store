//
//  Game.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

class Game: Item {
    var publisher: String
    var isMultiplayer : Bool
    
    init?(id: Int, title: String, price: Double, publisher: String, isMultiplayer: Bool) {
        
        if (publisher.isEmpty){
            print("""

            publisher cannot be empty. \(Self.self) not created!

            """)
            return nil
        }
        
        self.publisher = publisher
        self.isMultiplayer = isMultiplayer
        super.init(id: id, title: title, price: price)
        self.info = super.info + "\nPublisher: \(publisher)\nIs Multiplayer: \(isMultiplayer)"
        
    }
}
