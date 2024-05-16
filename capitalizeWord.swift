//
//  capitalizeWord.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 16/05/2024.
//

import Foundation
// Write a function `titleize(str)` that capitalizes each word in a string like
// a book title.
// Do not capitalize the following words (unless they are the first word in the
// string): ["a", "and", "of", "over", "the"]
func titleize(str:String)->String{
    let checkList = ["a", "and", "of", "over", "the"]
    let arr = str.split(separator: " ")
    var holder:[String] = []
    for (i,word) in arr.enumerated() {
        if checkList.contains(String(word)) {
            if i == 0 {
                let nsWord = word as NSString
                    holder.append(nsWord.capitalized)
                
            }else{
                holder.append(String(word))
            }
        }else{
            let nsWord = word as NSString
                holder.append(nsWord.capitalized)
        }
    }
    return holder.joined(separator: " ")
}
print(titleize(str: "hello there a nice day is comming and we will be happy"))

