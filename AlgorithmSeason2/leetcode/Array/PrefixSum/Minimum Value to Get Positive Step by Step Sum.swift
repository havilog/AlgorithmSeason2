//
//  Minimum Value to Get Positive Step by Step Sum.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/6/24.
//

import Foundation

func minStartValue(_ nums: [Int] = [2,3,5,-5,-1]) -> Int {
    guard let first = nums.first else { return .zero }
    var prefixSum: [Int] = [first]
    
    for (index, num) in nums.enumerated() {
        if index == .zero { continue }
        prefixSum.append(num + prefixSum[index-1])
    }
    
    let min = prefixSum.min() ?? 1
    return min > 0 ? 1 : abs(min) + 1 
}
