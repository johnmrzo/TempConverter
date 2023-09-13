//
//  TempConverter.swift
//  TempConverterApp
//
//  Created by Bakhtiyorjon Mirzajonov on 12/09/23.
//

import Foundation
class TempConverter {
  
  // MARK: Fields
  var isConvertingCtoF: Bool = true
  var inputTemp: Int = 0
  var convertedTemp: Int?
      
  // Set the input units
  func setInputUnit(_ tempUnit: String) {
    switch tempUnit {
    case "F":
      isConvertingCtoF = false
    default:
      isConvertingCtoF = true
    }
  }
  
  // Setter and getter methods
  func setInputTemp(_ temp: Int) {
    inputTemp = temp
  }
  
  func getConvertedTemp() -> Int? {
    return convertedTemp
  }
      
  // Separated functions for temperature conversion by unit
  func convertCtoF() {
    convertedTemp = (inputTemp * 9 / 5) + 32
  }
  
  func convertFtoC() {
    convertedTemp = Int((Double(inputTemp) - 32.0) * (5.0 / 9.0))
  }
    
  // Checks that the value is a valid temp using a guard statement to check if above absolute zero (return nil if not) and calls the appropriate conversion function above
  func convert() {
    if isConvertingCtoF {
      convertCtoF()
      print("HERE:", convertedTemp!)
      if convertedTemp! <= -273 {
        convertedTemp = nil
      }
    } else {
      convertFtoC()
      
      if convertedTemp! <= -459 {
        convertedTemp = nil
      }
    }
  }

}

