//
//  Missing Number.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/12/24.
//

import Foundation

func missingNumber(_ nums: [Int] = [9,6,4,2,3,5,7,0,1]) -> Int {
  let completed: Set<Int> = Set<Int>(0...nums.count)
  let numsSet: Set<Int> = Set(nums)
  let subtracted = completed.subtracting(numsSet)
  return subtracted.first ?? .zero 
}
