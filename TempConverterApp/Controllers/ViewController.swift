//
//  ViewController.swift
//  TempConverterApp
//
//  Created by Bakhtiyorjon Mirzajonov on 12/09/23.
//

import Foundation

class ViewController: ObservableObject {
  var tempConverter = TempConverter()
  
  @Published var inputTempString: String = "Temp"
  @Published var convertedTempString: String = "Temp"
  @Published var isConvertingCtoF: Bool = true
  
  func setInputTempString(_ inputTempString: String) {
    tempConverter.setInputTemp(Int(inputTempString) ?? -500)
  }
  
  func setInputTempUnit() {
    isConvertingCtoF ? tempConverter.setInputUnit("C") : tempConverter.setInputUnit("F")
  }
  
  func setConvertedTempString() {
    if (tempConverter.getConvertedTemp() != nil) {
      convertedTempString = String(tempConverter.getConvertedTemp()!)
    } else {
      convertedTempString = "N/A"
    }
  }
  
  func convert() {
    setInputTempString(inputTempString)
    setInputTempUnit()
    tempConverter.convert()
    setConvertedTempString()
  }
}
