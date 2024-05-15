//
//  mergeSort.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 15/05/2024.
//

import Foundation
// Write an `Array.prototype.mergeSort` method that merge sorts an array. It
// should take an optional callback that compares two elements, returning -1 if
// the first element should appear before the second, 0 if they are equal, and 1
// if the first element should appear after the second. Define and use a helper
// method, `merge(left, right, comparator)`, to merge the halves.
//
// **IMPORTANT: Make sure to use a function declaration (`function merge`) as
// opposed to a function expression (`const merge = function`) for `merge`. Do
// NOT use the built-in `Array.prototype.sort` method in your implementation.**
//
// Here's a summary of the merge sort algorithm:
//
// Split the array into left and right halves, then merge sort them recursively
// until a base case is reached. Use a helper method, merge, to combine the
// halves in sorted order, and return the merged array.
func compare(n1:Int , n2:Int)->Int{
    if n1 > n2 {
        return 1
    }else if n1 < n2 {
        return -1
    }else{
        return 0
    }
}
func mergeSort(arr:[Int])->[Int]{
    if arr.count < 2 { return arr }
    let midIdx = arr.count / 2
    let left = arr[..<midIdx]
    let right = arr[midIdx...]
    
    
    return merge(left: mergeSort(arr:Array(left) ),right: mergeSort(arr:Array(right) ))
}
func merge(left:[Int],right:[Int])->[Int]{
    var leftIdx = 0
    var rightIdx = 0
    var holder:[Int] = []
    while leftIdx < left.count && rightIdx < right.count {
        if left[leftIdx] < right[rightIdx]{
            holder.append(left[leftIdx])
            leftIdx+=1
        }else{
            holder.append(right[rightIdx])
            rightIdx+=1
        }
    }
    return holder + left[leftIdx...] + right[rightIdx...]
}
mergeSort(arr: [3,6,1,8,2,4])
