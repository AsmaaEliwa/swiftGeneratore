//
//  jumbleSort.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 15/05/2024.
//

import Foundation
// Write a function `jumbleSort(string, alphabet)`.
// Jumble sort takes a string and an alphabet. It returns a copy of the string
// with the letters re-ordered according to their positions in the alphabet. If
// no alphabet is passed in, it defaults to normal alphabetical order (a-z).
//
// The English alphabet, in order, is 'abcdefghijklmnopqrstuvwxyz'
//
// **Do NOT use the built-in `Array.prototype.sort` in your implementation.**
//
// Example:
// jumbleSort("hello") => "ehllo"
// jumbleSort("hello", ['o', 'l', 'h', 'e']) => 'ollhe'
func dictionarryFromString(str:String)->[Character:Int]{
    var holder:[Character:Int] = [:]
    for i in str{
        if holder[i] != nil {
            holder[i]!+=1
        }else{
            holder[i] = 1
        }
    }
    return holder
}

func jumbleSort(_ str:String ,_ alphabet:String = "abcdefghijklmnopqrstuvwxyz")->String{
    let dic = dictionarryFromString(str: str)
    var result = ""
    for i in alphabet{
        if dic[i] != nil {
            var n = dic[i]
            while n! > 0 {
                result.append(String(i))
                n!-=1
            }
        }
    }
    return result
}
// Example:
 print(jumbleSort("hello"))   //=> "ehllo"
 jumbleSort("hello", "olhe")   //=> 'ollhe'
