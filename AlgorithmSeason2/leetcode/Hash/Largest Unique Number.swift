//
//  Largest Unique Number.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 11/26/24.
//

import Foundation

// [5,7,3,9,4,9,8,3,1]
func largestUniqueNumber(_ nums: [Int]) -> Int {
  var dict: [Int: Int] = .init()
  for num in nums {
    dict[num, default: .zero] += 1
  }
  return dict.filter({ $1 == 1 }).keys.max() ?? .zero
}
