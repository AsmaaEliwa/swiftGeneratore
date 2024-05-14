//
//  binarySearch.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 14/05/2024.
//

import Foundation
// Write a recursive function, `binarySearch(sortedArray, target)`, that returns
// the index of `target` in `sortedArray`, or -1 if it is not found. Do NOT use
// the built-in `Array.prototype.indexOf` or `Array.prototype.includes` methods
// in your implementation.
//
// Here's a quick summary of the binary search algorithm:
//
// Start by looking at the middle item of the array. If it matches the target,
// return its index. Otherwise, recursively search either the left or the right
// half of the array until the target is found or the base case (empty array) is
// reached.
func binarySearch(_ sortedArray:[Int],_ target:Int)->Int{
    if sortedArray.isEmpty {
        return -1
    }
    let midIdx = sortedArray.count / 2
    let leftArr = sortedArray[..<midIdx]
    let rightArr = sortedArray[midIdx...]
    if sortedArray[midIdx] == target {
        return midIdx
    }else if sortedArray[midIdx] > target {
       return binarySearch(Array(leftArr) , target)
    }else{
         var result = binarySearch(Array(rightArr) , target)
        return result == -1 ? -1 : result + midIdx
    }
   
}
//print(binarySearch([1,2,3,4,5], 3))
