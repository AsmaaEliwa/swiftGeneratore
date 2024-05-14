//
//  bubbleSort.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 14/05/2024.
//

import Foundation
// Write an `Array.prototype.bubbleSort(callback)` method, that bubble sorts an array.
// It should take an optional callback that compares two elements, returning
// -1 if the first element should appear before the second, 0 if they are
// equal, and 1 if the first element should appear after the second. Do NOT call
// the built-in `Array.prototype.sort` method in your implementation. Also, do NOT
// modify the original array.
//
// Here's a quick summary of the bubble sort algorithm:
//
// Iterate over the elements of the array. If the current element is unsorted
// with respect to the next element, swap them. If any swaps are made before
// reaching the end of the array, repeat the process. Otherwise, return the
func sortTwoEle(_ n1:Int,_ n2:Int)->Int{
    if n1 > n2 {
        return 1
    }else if n1 < n2 {
        return -1
    }else{
        return 0
    }
}
func bubbleSort(callBack: (_ n1:Int,_ n2:Int)->Int, arr:[Int])->[Int]{
    var sorted = false
    var holder = arr
    while !sorted {
        sorted = true
        for (i, _) in holder.enumerated(){
            if i + 1 < holder.count{
                switch callBack(holder[i],holder[i+1]) {
                case -1:
                    print("good")
                case 1:
                    let temp = holder[i]
                    holder[i] =  holder[i+1]
                    holder[i+1] = temp
                    sorted = false
                default:
                    print("good")
                }
            }
        }
    }
    return holder
}
bubbleSort(callBack:sortTwoEle , arr: [3,2,5,1,7,0])
