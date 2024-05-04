//
//  Max Consecutive Ones III  .swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/4/24.
//

import Foundation

extension Solution {
    func longestOnes(
//        _ nums: [Int] = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1],
//        _ k: Int = 3
        _ nums: [Int] = [1,1,1,0,0,0,1,1,1,1,0],
        _ k: Int = 2
    ) -> Int {
        var output: Int = .zero
        var current: Int = .zero
        var left: Int = .zero
        
        for right in nums.indices {
            if nums[right] == .zero { 
                current += 1
            }
            
            while current > k {
                if nums[left] == .zero {
                    current -= 1
                }
                left += 1
            }
            
            output = max(output, right - left + 1)
        }
        
        return output
    }
}
