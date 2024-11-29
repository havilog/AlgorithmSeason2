//
//  Search Insert Position.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 11/29/24.
//

import Foundation

// [1,3,5,6]
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
  var left: Int = .zero
  var right: Int = nums.count - 1
  while left <= right {
    let pivot = left + (right - left) / 2
    if nums[pivot] > target {
      right = pivot - 1
    } else if nums[pivot] < target {
      left = pivot + 1
    } else { 
      return pivot
    }
  }
  return left
}
