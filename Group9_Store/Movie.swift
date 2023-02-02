//
//  Movie.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

class Movie: Item {
    var runningTime: Int
    
    init(id: Int, title: String, price: Double, runningTime: Int) {
        
        self.runningTime = runningTime
        super.init(id: id, title: title, price: price)
        self.info = super.info + "\nRunning Time: \(runningTime) min"
    }
}
