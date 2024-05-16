//
//  symmetricSubstrings.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 16/05/2024.
//

import Foundation
// Write a `String.prototype.symmetricSubstrings` method that returns an array
// of substrings which are palindromes in alphabetical order. Only include
// substrings of length > 1.
// e.g. "cool".symmetricSubstrings() => ["oo"]
func generateSubstrings(str:String)->[String]{
    var holder:[String] = []
    for i in 0..<str.count{
        for j in (i + 1)..<str.count{
            let startIdx = str.index(str.startIndex, offsetBy: i)
            let lastIdx = str.index(str.startIndex, offsetBy: j)
            holder.append(String(str[startIdx...lastIdx]))
        }
    }
    return holder
}
func isPalindrome(str:String)->Bool{
    if str.count > 1 {
        if str == String(str.reversed()){
            return true
        }
    }
    return false
}
func symmetricSubstrings(str:String)->[String]{
    let subs = generateSubstrings(str: str)
    var holder:[String] = []
    for sub in subs{
        if isPalindrome(str: sub){
            holder.append(sub)
        }
    }
    return holder
}
print(symmetricSubstrings(str: "coolee"))

