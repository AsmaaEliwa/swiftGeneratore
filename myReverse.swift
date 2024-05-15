//
//  myReverse.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 15/05/2024.
//

import Foundation
var arr = [1,2,3,4,5,6,7,8,9]
let reversedArr = arr.reversed()
print(Array(reversedArr))
func myReverse(arr:[Int])->[Int]{
    var holder: [Int] = []
    var i = arr.count - 1
    while i >= 0 {
        holder.append(arr[i])
        i-=1
    }
    return holder
}
print(myReverse(arr: arr))
