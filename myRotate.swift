//
//  myRotate.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 15/05/2024.
//

import Foundation
// Write an `Array.prototype.myRotate(times)` method which rotates the array by
// the given argument. If no argument is given, rotate the array by one position.
// ex.
// ["a", "b", "c", "d"].myRotate() => ["b", "c", "d", "a"]
// ["a", "b", "c", "d"].myRotate(2) => ["c", "d", "a", "b"]
// ["a", "b", "c", "d"].myRotate(-1) => ["d", "a", "b", "c"]
func myRotate(n:Int = 1,arr:[String])->[String]{
    var holder = arr
    var count = n
    while count != 0{
        if count > 0 {
            let first = holder.remove(at: 0)
            holder.append(first)
            count-=1
        }else if count < 0{
            let last = holder.remove(at: holder.count - 1)
            holder.insert(last, at: 0)
            count+=1
        }
    }
    return holder
}
let arr =  ["a", "b", "c", "d"]
print(myRotate(arr: arr))
print(myRotate(n:2, arr: arr))
print(myRotate(n:-1, arr: arr))
