//
//  subs.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 16/05/2024.
//

import Foundation
// Write a `String.prototype.realWordsInString(dictionary)` method, that returns
// an array containing the substrings of `string` that appear in `dictionary`.
// sorted alphabetically. This method does NOT return any duplicates.
func generateSubString(str:String)->[String]{
    var holder:[String] = []
    for i in 0..<str.count{
        for j in (i + 1)..<str.count{
            let firstIdx = str.index(str.startIndex, offsetBy: i)
            let lastIdx = str.index(str.startIndex, offsetBy: j)

            holder.append(String(str[firstIdx...lastIdx]))
        }
    }
    print (holder)
    return holder
}
func subString(str:String,dictionary:[String])->[String]{
    let subs = generateSubString(str: str)
    var holder:[String] = []
    for  sub in subs{
        if dictionary.contains(sub){
            holder.append(sub)
        }
    }
    return holder
}
print(subString(str: "asmaa", dictionary: ["ass","as","asm"]))
