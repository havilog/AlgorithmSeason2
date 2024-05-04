//
//  ex1.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/4/24.
//

import Foundation

func findLength(nums: [Int] = [3, 1, 2, 7, 4, 2, 1, 1, 5], k: Int = 8) -> Int {
    var current: Int = .zero
    var left: Int = .zero
    var answer: Int = .zero
    
    for right in nums.indices {
        current += nums[right]
        while current > k {
            current -= nums[left]
            left += 1
        }
        answer = max(answer, right - left + 1)
    }
    
    return answer
}
