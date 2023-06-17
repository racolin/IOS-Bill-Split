//
//  BillBrain.swift
//  Bill Split
//
//  Created by Administrator on 16/06/2023.
//

import Foundation

struct BillBrain {
    
    var total : String?
    var tip : String?
    var amount : Double
    
    func getAmount() -> Int {
        return Int(amount)
    }
    
    func getAmountString() -> String {
        return String(getAmount())
    }
    
    func getTotal() -> Float {
        if let t = total {
            if (!t.isEmpty) {
                return Float(t) ?? 0
            }
        }
        return 0
    }
    
    func getTip() -> Int {
        if let t = tip {
            if (!t.isEmpty) {
                return Int(t[..<t.index(before: t.endIndex)]) ?? 0
            }
        }
        return 0
    }
    
    mutating func getBillModel() -> BillModel {
        
        print(getTip())
        return BillModel(total: getTotal(), tip: getTip(), amount: getAmount())
    }
}
