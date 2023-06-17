//
//  BillModel.swift
//  Bill Split
//
//  Created by Administrator on 16/06/2023.
//

import Foundation

struct BillModel {
    let total: Float
    let tip: Int
    let amount: Int
    
    func getPerPerson() -> Float {
        return total * Float(100 + tip) / 100 / Float(amount);
    }
}
