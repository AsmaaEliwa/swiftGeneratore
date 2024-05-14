//
//  exponent.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 14/05/2024.
//

import Foundation
// Write a function, `exponent(b, n)`, that calculates b^n recursively.
// Your solution should accept negative values for n. Do NOT use ** or Math.pow

func exponent(b:Int , n:Int)->Float{
    if b == 0 {
        return 0.0
    }
    var power = n
    if power > 0 {
        return Float(b) * exponent(b:b , n:power - 1 )
    }else if power < 0 {
        return 1 /  exponent(b:b , n: -power )
    }else{
        return 1.0
    }
}
print(exponent(b: 2, n: 4))
print(exponent(b: 2, n: -2))
