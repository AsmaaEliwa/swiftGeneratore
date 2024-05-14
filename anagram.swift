//
//  anagram.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 14/05/2024.
//
// Write a function, `anagrams(str1, str2)`, that takes in two words and returns
// a boolean indicating whether or not the words are anagrams. Anagrams are
// words that contain the same characters but not necessarily in the same order.
// Solve this without using Array.prototype.sort.
//
// Examples:
// anagrams('listen', 'silent') => true
// anagrams('listen', 'potato') => false
import Foundation
func DectionaryFromString(str:String)->[Character:Int]{
    var holder:[Character:Int] = [:]
    for i in str{
        if holder.keys.contains(i){
            holder[i]!+=1
        }else{
            holder[i] = 1
        }
    }
    return holder
}
func anagram(str1:String,str2:String)->Bool{
    DectionaryFromString(str: str1) ==  DectionaryFromString(str: str2)
}
