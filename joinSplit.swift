//
//  joinSplit.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 15/05/2024.
//

import Foundation
let arr = ["a","s","m","a","a"]
let myName = arr.joined(separator: ",")   // "a,s,m,a,a"
let correctName = arr.joined() // "asmaa"
 let sentens = "hello,asmaa"
let myArr = sentens.split(separator: ",")

func myJoin(arr:[String])->String{
    var holder:String = ""
    for i in arr {
        holder.append(String(i))
    }
    return holder
}
myJoin(arr:["a","s","m","a","a"] )
func mySplit(str:String)->[Character]{
    var holder:[Character] = []
    for i in str{
        holder.append(i)
    }
    return holder
}
mySplit(str:"hello asmaa" )
func mySplitWithSeperator(str:String , seperator:String)->[String]{
    var holder:[String] = []
    var sub = ""
    for i in str {
        if String(i) == seperator {
            holder.append(sub)
            sub = ""
        }else{
            sub.append(i)
        }
    }
    if !sub.isEmpty {
           holder.append(sub)
       }
    return holder
}
mySplitWithSeperator(str: "hello,asmaa", seperator: ",")

