//
//  Maximum Units on a Truck.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 11/26/24.
//

import Foundation

func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
  var answer: Int = .zero
  for box in boxTypes {
    let container = box[0] > box[1] ? box[1] : box[0]
    answer += container * box[1] > truckSize ? truckSize : container * box[1]
  }
  return answer
}
