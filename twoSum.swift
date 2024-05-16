//
//  twoSum.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 16/05/2024.
//

import Foundation
// Write an `Array.prototype.twoSum` method, that finds all pairs of positions
// where the elements at those positions sum to zero.

// NB: ordering matters. Each pair must be sorted with the smaller index
// before bigger index. The array of pairs must be sorted
// "dictionary-wise":
// [0, 2] before [1, 2] (smaller first elements come first)
// [0, 1] before [0, 2] (then smaller second elements come first)
func twoSum(arr:[Int])->[[Int]]{
    var holder:[[Int]] = []
    for i in 0..<arr.count{
        for j in (i + 1)..<arr.count{
            if arr[i] + arr[j] == 0 {
                holder.append([i,j])
            }
        }
    }
    return holder
}
print(twoSum(arr: [1,2,3,4,-1,-2]))
