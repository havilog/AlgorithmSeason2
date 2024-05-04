//
//  File.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/4/24.
//

import Foundation

extension Solution {
    func findMaxAverage(
        _ nums: [Int] = [1,12,-5,-6,50,3], 
        _ k: Int = 4
    ) -> Double {
        guard nums.count > k else {
            return Double(nums.reduce(0, +)) / Double(nums.count) 
        }
        
        var output: Double = Double(Int.min)
        var current: Int = .zero
        var left: Int = .zero
        
        for right in nums.indices {
            current += nums[right]
            
            if right >= k-1 { 
                output = max(output, Double(current) / Double(k))
                current -= nums [left]
                left += 1
            }
        }
        
        return output
    }
}
