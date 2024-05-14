//
//  factorialsRec.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 14/05/2024.
//

import Foundation
// Write a recursive function, `factorialsRec(num)`, that returns the first
// `num` factorial numbers. Note that the 1st factorial number is 0!, which
// equals 1. The 2nd factorial is 1!, the 3rd factorial is 2!, etc.
func factorialsRec(num:Int)->Int{ 
    if num == 0 {
        return 1
    }
    return num * factorialsRec(num: num - 1)
}

