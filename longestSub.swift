//
//  longestSub.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 23/05/2024.
//

import Foundation
//Longest Substring Without Repeating Characters
func generateSubs(str:String)->[String]{
    var holder:[String] = []
    for i in 0..<str.count{
        for j in (i + 1)...str.count{
            let firstIndx = str.index(str.startIndex , offsetBy: i)
            let endIndx = str.index(str.startIndex , offsetBy: j)
            holder.append(String(str[firstIndx..<endIndx]))
        }
    }
    print(holder)
    return holder
}

func longestSub(str:String)->String{
    let subs = generateSubs(str: str)
    return subs.max(by: {$0 < $1}) ?? ""
}
longestSub(str: "asmaa")
