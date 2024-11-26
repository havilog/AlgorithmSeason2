//
//  Maximum Number of Balloons.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 11/26/24.
//

import Foundation
func maxNumberOfBalloons(_ text: String) -> Int {
  let balloon: String = "balloon"
  var dict: [Character: Int] = .init()
  
  // [b: 1, a: 1, l: 2, o: 2, n: 1]
  for spelling in balloon {
    dict[spelling] = .zero
  }
  
  for character in text {
    if dict[character] != nil {
      dict[character, default: .zero] += 1
    }
  }
  
  // [b: 2, a: 2, l: 4, o: 4, n: 2]
  if let l = dict["l"], l != .zero {
    dict["l"] = Int(floor(Double(l / 2)))
  } 
  if let o = dict["o"], o != .zero {
    dict["o"] = Int(floor(Double(o / 2)))  
  } 
  
  return dict.values.min() ?? .zero
}
