//
//  ContentView.swift
//  TempConverterApp
//
//  Created by Bakhtiyorjon Mirzajonov on 12/09/23.
//

import SwiftUI

struct ContentView: View {
  
  @State private var Value = ""
  
  
  var body: some View {
    VStack {
      Spacer()
      
      HStack {
        Text("Temp")
        Text("ºF")
      }
      
      Spacer()
      
      Text("Enter Temperature:")
      
      HStack {
        TextField("Temp", text: $Value)
          .frame(width: 90.0)
          .multilineTextAlignment(.center)
          Text("ºC")
        }
      
      Spacer()

      Button("Convert") {
        
      }
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
