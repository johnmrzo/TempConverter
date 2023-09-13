//
//  ContentView.swift
//  TempConverterApp
//
//  Created by Bakhtiyorjon Mirzajonov on 12/09/23.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var viewController = ViewController()
  @State var inputTemp: String = ""
  
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
          if viewController.isConvertingCtoF {
            Text("\(viewController.convertedTempString) ºF")
              .font(.largeTitle)
              .fontWeight(.ultraLight)
          } else {
            Text("\(viewController.convertedTempString) ºC")
              .font(.largeTitle)
              .fontWeight(.ultraLight)
          }
        }
        
        Spacer()
        
        Text("Enter Temperature:")
        HStack {
          TextField("Temp", text: $inputTemp)
            .frame(width: 90.0)
            .multilineTextAlignment(.center)
            .border(Color.white)
          Text("ºC")
        }
        
        Spacer()
        
        HStack(alignment: .center) {
          Text("ºF -> ºC")
            .fontWeight(.thin)
          Toggle(isOn: $viewController.isConvertingCtoF) {
            Text("")
          }
          .labelsHidden()
          .frame(width: 50)
          .padding()
          Text("ºC -> ºF")
           .fontWeight(.thin)
        }
        .padding()
        
        Button(action: { viewController.inputTempString = inputTemp; viewController.convert()}) {
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
