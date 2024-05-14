//
//  dups.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 14/05/2024.
//

import Foundation
// Write an `Array.prototype.dups` method that will return an object containing
// the indices of all duplicate elements. The keys are the duplicate elements;
// the values are arrays of their indices in ascending order
//
// Example:
// [1, 3, 4, 3, 0, 3, 0].dups => { 3: [1, 3, 5], 0: [4, 6] }

func dups(arr:[Int])->[Int:[Int]]{
    var holder:[Int:[Int]] = [:]
    for (i,n) in arr.enumerated() {
        if holder[n] != nil {
            holder[n]!.append(i)
        }else{
            holder[n] = [i]
        }
    }
//    print(holder)
    return holder.filter { (key: Int, value: [Int]) in
        value.count > 1
    }
}
print(dups(arr:[1, 3, 4, 3, 0, 3, 0] ))
