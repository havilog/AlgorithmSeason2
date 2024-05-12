//
//    Check if the Sentence Is Pangram  .swift
//  AlgorithmSeason2
//
//  Created by 한상진 on 5/12/24.
//

import Foundation

func checkIfPangram(
  _ sentence: String = "thequickbrownfoxjumpsoverthelazydog"
) -> Bool {
  var dict: [String: Bool] = .init()
  for scalarValue in Unicode.Scalar("a").value...Unicode.Scalar("z").value {
    if let scalar = Unicode.Scalar(scalarValue) {
      let alphabet = String(scalar)
      dict[alphabet] = false
    }
  }
  
  sentence.forEach { char in
    let alphabet = String(char)
    dict[alphabet] = true
  }
  
  return dict.values.contains(false) ? false : true 
}

