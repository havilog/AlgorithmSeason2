//
//  Counting Elements.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/12/24.
//

import Foundation
func countElements(_ arr: [Int] = [1,1,3,3,5,5,7,7]) -> Int {
  var dict: [Int: Int] = . init()
  var answer: Int = .zero
  for num in arr {
    dict[num, default: .zero] += 1
  }
  for key in dict.keys {
    answer += dict[key-1, default: .zero]
  }
  return answer
}
