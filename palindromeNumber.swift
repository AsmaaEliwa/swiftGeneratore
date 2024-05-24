//
//  palindromeNumber.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 24/05/2024.
//

import Foundation
//Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.
func palindromeNumber(n:Int)->Bool{
  let strFromNum = String(n)
    return Array(strFromNum.split(separator: "").reversed()).joined() == strFromNum
}
palindromeNumber(n: 1221)
