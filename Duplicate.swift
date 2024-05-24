//
//  Duplicate.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 23/05/2024.
//

import Foundation
//10. Find the Duplicate Number
//Given an array of integers, find the duplicate number.
 
func Duplicate(arr:[Int])->[Int]{
    var holder:[Int] = []
    for i in 0..<arr.count{
        for j in (i + 1)..<arr.count{
            if arr[i] == arr[j] && !holder.contains(arr[i]){
                holder.append(arr[i])
            }
        }
    }
    return holder
}
print(Duplicate(arr: [1,2,3,4,2,3,2]))
