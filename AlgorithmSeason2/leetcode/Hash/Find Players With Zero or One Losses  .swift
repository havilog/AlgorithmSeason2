//
//    Find Players With Zero or One Losses  .swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 11/26/24.
//

import Foundation

func findWinners(_ matches: [[Int]]) -> [[Int]] {
  var dict: [Int: Int] = .init()
  
  // [1, 3]
  for match in matches {
    if dict[match[0]] == nil {
      dict[match[0]] = .zero
    }
    dict[match[1], default: .zero] += 1
  }
  var winners: [Int] = .init()
  var oneLosers: [Int] = .init()
  
  for (key, value) in dict.sorted(by: <) {
    if value == .zero { 
      winners.append(key)
      continue
    }
    if value == 1 { 
      oneLosers.append(key) 
    }
  }
  return [winners, oneLosers]
}
