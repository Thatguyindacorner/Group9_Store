//
//  Extensions.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-05.
//

import Foundation

extension Double{
    func printPrice()->String{ return "$\(String(format: "%.2f", self))" }
}

extension Customer{
    func iterateList(){
        print("-----Customer's OwnedItems-----------------")
        for item in self.itemsList{
            print(item.info)
        }
        print()
    }
    
    func balanceInfo() { print("Remaining Balance is \(self.balance.printPrice())") }
    
}

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

