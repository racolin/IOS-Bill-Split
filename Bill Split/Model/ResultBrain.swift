//
//  ResultBrain.swift
//  Bill Split
//
//  Created by Administrator on 17/06/2023.
//

import Foundation

struct ResultBrain {
    var bill : BillModel
    
    func getResult() -> String {
        return String(format: "%.2f", bill.getPerPerson())
    }
    
    func getDescription() -> String {
        var amount = bill.amount
        var tip = bill.tip
        print(amount)
        print(tip)
        return "Split between \(amount) people, with \(tip)% tip"
    }
}
