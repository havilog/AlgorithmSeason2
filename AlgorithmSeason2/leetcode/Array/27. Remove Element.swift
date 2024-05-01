//
//  27. Remove Element.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/1/24.
//

import Foundation

extension Solution {
    /// [3, 2, 2, 3]
    @_optimize(speed)
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums.removeAll(where: { $0 == val })
        return nums.count
    }
}

/**
 final class Solution {
     @_optimize(speed)
     func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
         guard !nums.isEmpty else { return 0 }
         var i = 0
         nums.withUnsafeBufferPointer { buffer in
             for j in buffer.indices where buffer[j] != val {  
                 nums[i] = buffer[j]
                 i += 1
             }
         }
         return i
     }
 }
 */
