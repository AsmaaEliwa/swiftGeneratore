//
//  digitalRoot.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 14/05/2024.
//

import Foundation
// Write a function, `digitalRoot(num)`. It should sum the digits of a positive
// integer. If the result is greater than 9 (i.e. more than one digit), sum the
// digits of the resulting number. Keep repeating until there is only one digit
// in the result, called the "digital root".
// **Do not use string conversion within your method.**
// For further explanation on the digital root concept, refer here: https://en.wikipedia.org/wiki/Digital_root
//
// You may wish to use a helper function, `digitalRootStep(num)` which performs
// one step of the process.

func digitalRoot(num:Int)->Int{    129
    if num < 10 {
        return num
    }
var strNum = String(num)
    while strNum.count > 1{
        var subSum = 0
        for i in strNum {
            subSum+=Int(String(i)) ?? 0
        }
        strNum = String(subSum)
    }
    return Int(strNum) ?? 0
}
digitalRoot(num: 129) 
