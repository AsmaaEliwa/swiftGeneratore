//
//  transpose.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 16/05/2024.
//

import Foundation
// Write a function `transpose(arr)` that returns a 2d array transposed.
// e.g. transpose([[1,2],[3,4],[5,6]]) => [[1,3,5],[2,4,6]]
func transpose(arr:[[Int]])->[[Int]]{
    var holder = Array(repeating: Array(repeating: 0, count: arr.count), count: arr[0].count)
    var count = 0
    
        for i in 0..<arr.count {
            for j in  0..<arr[i].count  {
                holder[j][i] = arr[i][j]
            }
    }
    return holder
}
print(transpose(arr: [[1,2],[3,4],[5,6]]))
