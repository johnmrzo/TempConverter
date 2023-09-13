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
    ZStack {
      Color.blue.edgesIgnoringSafeArea(.all).opacity(0.80)
      LinearGradient(
        gradient: Gradient(colors: [Color.white, Color.gray]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
      .edgesIgnoringSafeArea(.all)
      .opacity(0.45)
      
      VStack {
        Spacer()
        
        HStack {
          Text("0.0")
          Text("ºF")
        }
        
        Spacer()
        
        Text("Enter Temperature:")
        HStack {
          TextField("Temp", text: $Value)
            .frame(width: 90.0)
            .multilineTextAlignment(.center)
            .border(Color.white)
          Text("ºC")
        }
        
        Spacer()
        
        Button(action: {}) {
          Text("Convert")
        }
        .padding(.all)
        .background(Color.white)
        .cornerRadius(15.0)
        
        Spacer()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
