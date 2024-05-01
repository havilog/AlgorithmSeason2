//
//  main.swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/1/24.
//

import Foundation

class Solution {
    init() { }
}

let solution: Solution = .init()

var input1: [Int] = [3,2,2,3]
//let result = solution.removeDuplicates(&input1)
let result = solution.removeElement(&input1, 3)
print(result)
