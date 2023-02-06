//
//  Movie.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

class Movie: Item {
    var runningTime: Int
    
    override var info: String{
        return super.info + "\nRunning Time: \(runningTime) mins"
    }
    
    init?(id: Int, title: String, price: Double, runningTime: Int) {
        
        if runningTime <= 0{
            print("""

            runningTime cannot be less than or equal to 0. \(Self.self) not created!

            """)
            return nil
        }
        
        self.runningTime = runningTime
        super.init(id: id, title: title, price: price)
        //self.info = super.info + "\nRunning Time: \(runningTime) min"
    }
}
