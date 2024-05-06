//
//  File.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/6/24.
//

import Foundation

func runningSum(_ nums: [Int]) -> [Int] {
    var prefixSum: [Int] = .init()
    prefixSum.reserveCapacity(nums.count)
    
    for (index, num) in nums.enumerated() {
        if index == .zero {
            prefixSum.append(num)
            continue
        }
        if let last = prefixSum.last {
            prefixSum.append(last + num)
        }
    }
    
    return prefixSum
}
