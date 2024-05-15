//
//  myFlatten.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 15/05/2024.
//

import Foundation
//myFlatten()` method which flattens a
// multi-dimensional array into a one-dimensional array.
func myFlatten(arr:[Any])->[Int]{
    var holder:[Int] = []
    if arr.count < 1 {return holder}
        for i in arr {
            if let arr = i as? [Any] {
                holder+=myFlatten(arr: i as! [Any])
        }else if let n = i as? Int{
            holder.append(n)
        }
    }
    return holder
}
print(myFlatten(arr: [[1],[[2,[3]]]]))
