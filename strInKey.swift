//
//  strInKey.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 16/05/2024.
//

import Foundation
// Write a recursive function `stringIncludeKey(string, key)` that takes in
// a string to search and a key string. Return true if the string contains all
// of the characters in the key in the same order that they appear in the key.
//
// stringIncludeKey("cadbpc", "abc") => true
// // stringIncludeKey("cba", "abc") => false
func strInKey(str:String , key:String)->Bool{
    var count = 0
    var myKey = key
    for (i,e) in str.enumerated(){
        let idx = key.index(key.startIndex, offsetBy: i)
        if key[idx...].contains(e){
            count+=1
        }
    }
    return str.count == count
}
print(strInKey(str: "asmaa", key: "mqqasaa"))
