//
//  26.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/1/24.
//

import Foundation

extension Solution {
    /// 감소하지 않는 숫자
    /// 유일하게 나타나도록
    /// 제약조건
    /// 길이 10,000
    /// -100 ~ 100
    /// 음수이고, 100개
    /// O^2
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let set: Set<Int> = .init(nums)
        nums = Array(set).sorted()
        return set.count
    }
}
