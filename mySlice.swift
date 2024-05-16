//
//  mySlice.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 16/05/2024.
//

import Foundation
// `abcde`.mySlice(2) => `cde`
// `abcde`.mySlice(1, 3) => `bc`

func mySliceStr(s:Int = 0 , e:Int,str:String)->String{
    var holder = str
    var start = s
    var count = e - s
    let startIdx = holder.index(holder.startIndex,offsetBy: s)
    let endIdx = holder.index(holder.startIndex,offsetBy: e)
    if s == 0{
        holder = String(str[endIdx...])
    }else{
        while count >= 0 {
//            print(start)
            let idx = holder.index(holder.startIndex, offsetBy: start)
            holder.remove(at: idx)
            count-=1
        }
    }
    return holder
}
let str = "abcde"
print(mySliceStr(e: 2, str: str))
print(mySliceStr(s:1 ,e: 3, str: str))


func mySlice(s:Int = 0 , e:Int,arr:[Int])->[Int]{
    return Array(arr[s..<e])
}


let arr = [1,2,3,4,5,6]


print(mySlice(s: 1,e:3, arr: arr))

