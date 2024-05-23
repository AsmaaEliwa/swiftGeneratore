//
//  validParentheses.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 23/05/2024.
//

import Foundation
//Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
func validParentheses(str:String)->Bool{
    var prentDictionary = ["{":"}","(":")","[":"]"]
    var holder:[String] = []
    for i  in str{
        if holder.isEmpty && prentDictionary.keys.contains(String(i)){
            holder.append(String(i))
        }else if holder.isEmpty && prentDictionary.values.contains(String(i)) {
            return false
        }
        else if prentDictionary.values.contains(holder.last!) && prentDictionary.keys.contains(String(i)){
            holder.append(String(i))
        }else if prentDictionary.keys.contains(holder.last!) && prentDictionary[holder.last!] == String(i){
            holder.append(String(i))
        }
                                          
    }
    return holder.count == str.count
}
print(validParentheses(str: "}[]"))
