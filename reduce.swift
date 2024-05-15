//
//  reduce.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 15/05/2024.
//

import Foundation
let arr = [1,1,1,1,1,1]
let sum = arr.reduce(4) {$0 + $1} // 4 is intial value
func myReduce(acc:Int,arr:[Int])->Int{
    var sum = acc
    for i in arr{
        sum+=i
    }
    return sum
}
myReduce(acc: 4, arr: arr)
