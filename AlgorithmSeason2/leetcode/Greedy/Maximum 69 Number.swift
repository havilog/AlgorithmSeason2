//
//  Maximum 69 Number.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 11/26/24.
//

import Foundation

func maximum69Number (_ num: Int) -> Int {
  var stringNumber = Array(String(num))
  var maxIndex: Int?
  for (index, number) in stringNumber.enumerated() {
    if number == "6" {
      maxIndex = index
      break
    }
  }
  
  if let maxIndex {
    stringNumber[maxIndex] = "9"
    if let number = Int(String(stringNumber)) {
      return number
    } else {
      return num
    }
  } else {
    return num
  }
}
