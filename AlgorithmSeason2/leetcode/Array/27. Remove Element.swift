//
//  27. Remove Element.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/1/24.
//

import Foundation

extension Solution {
    /// [3, 2, 2, 3]
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums.removeAll(where: { $0 == val })
        return nums.count
    }
}
