//
//  prime.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 16/05/2024.
//

import Foundation
 // Write a function `primes(num)`, which returns an array of the first "num" primes.
func isPrme(n:Int)->Bool{
    if n < 2 {
        return false
    }
    for i in 2..<n{
        if n % i == 0 {
            return false
        }
    }
    return true
}

func primes(num:Int)->[Int]{
    var holder:[Int] = []
    var p = 2
    while holder.count < num{
        if isPrme(n: p){
            holder.append(p)
        }
        p+=1
        
    }
    return holder
}
print(primes(num: 3))
