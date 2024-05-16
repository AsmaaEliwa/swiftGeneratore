//
//  recSum.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 16/05/2024.
//

import Foundation
// Write a recursive function `recSum(numArr)` that returns the sum of all
// elements in an array. Assume all elements are numbers.
//[1,1,1,1,1]
func recSum(arr:[Int])->Int{
    if arr.count == 1 {
        return arr[0]
    }
    return arr[arr.count - 1] + recSum(arr: Array(arr[0..<arr.count - 1]))
}
print(recSum(arr: [1,1,1,1,1]))
