//
//  IsPurchaseable.swift
//  Group9_Store
//
//  Created by Alex Olechnowicz on 2023-02-01.
//

import Foundation

protocol IsPurchaseable {
    var info: String {get set}
    func printReceipt(isRefund: Bool, amount: Double)
}
