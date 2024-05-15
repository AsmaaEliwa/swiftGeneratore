//
//  myEvery.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 15/05/2024.
//

import Foundation
//myEvery(callback)` method that returns true
//// if the callback returns true for every element in the array, and otherwise
//// returns false
func compare(n:Int)->Bool{
    return  n < 10
}
func myEvery(callBack:(_ n:Int)->Bool ,arr:[Int])->Bool{
    for i in arr{
        if !callBack(i) {
            return false
        }
    }
    return true
}
myEvery(callBack: compare, arr: [1,2,3,4,5])
