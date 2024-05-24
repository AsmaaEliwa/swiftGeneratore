//
//  subArray.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 23/05/2024.
//

import Foundation
//9. Maximum Subarray
//Given an integer array, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
func generateSubsFromArray(arr:[Int])->[[Int]]{
    var holder:[[Int]] = []
    for i in 0..<arr.count{
        for j in (i + 1)...arr.count{
            holder.append(Array(arr[i..<j]))
        }
    }
//    print(Array(Set(holder)))
    return holder
}
generateSubsFromArray(arr: [-2, 1, -3, 4, -1, 2, 1, -5, 4])
func maxFromArray(arr:[Int])->[Int]{
    var maxSum = arr[0]
    var holder:[Int]  = []
    for i in arr{
        if i + maxSum >  maxSum  && i != 0 {
            maxSum+=i
            holder.append(i)
        }
    }
    
    return holder
}
print(maxFromArray(arr: [-2, 1, -3, 4, -1, 2, 1, -5, 4]))
func maxFromSubArray(arr:[Int])->[Int]{
    let subs = generateSubsFromArray(arr: arr)
    var currentSum = subs[0].reduce(0){$0 + $1}
    var maxSub:[Int] = subs[0]
    for (i,sub) in subs.enumerated(){
        if i != 0 && sub.reduce(0){$0 + $1} > currentSum {
            currentSum = sub.reduce(0){$0 + $1}
            maxSub = sub
        }
    }
    return maxSub
}
print(maxFromSubArray(arr: [-2, 1, -3, 4, -1, 2, 1, -5, 4] ))
