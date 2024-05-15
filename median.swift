//
//  median.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 15/05/2024.
//

import Foundation
// Write an `Array.prototype.median` method that returns the median of elements
// in an array. If the length is even, return the average of the middle two
// elements.
func median(arr:[Int])->Int{     4
    let sortedArr = arr.sorted()
    var mididx = arr.count / 2
    if arr.count % 2 == 0{
        return (sortedArr[mididx] + sortedArr[mididx + 1]) / 2
    }
    return sortedArr[mididx ]
}
print(median(arr: [2,5,1,5,6,7])) //5
print(median(arr: [2,5,4,1,3]))  //3
