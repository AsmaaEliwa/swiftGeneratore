//
//  maxProfit.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 23/05/2024.
//

import Foundation
func maxProfit(_ prices:[Int])->Int{
  var minPrice = Int.max
    var maxPrice = 0
    var maxIdx = 0
    var minIdx = 0
  var maxProfit = 0
    for (i,price) in prices.enumerated() {
        if price < minPrice {
            minPrice = price
            minIdx = i
        }
//        print(minPrice)
        maxPrice = prices[minIdx...].max() ?? 0
        if maxPrice - minPrice > maxProfit {
            maxProfit =  maxPrice - minPrice
           
        }
        
    }
    return maxProfit
}


let prices = [7, 1, 5, 3, 6, 4]
print(maxProfit(prices))  // Output: 5 (buy at 1 and sell at 6)

let prices2 = [7, 6, 4, 3, 1]
print(maxProfit(prices2))  // Output: 0 (no transaction is done)
