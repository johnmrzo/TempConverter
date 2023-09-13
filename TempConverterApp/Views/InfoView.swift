//
//  InfoView.swift
//  TempConverterApp
//
//  Created by Bakhtiyorjon Mirzajonov on 13/09/23.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
      NavigationView {
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
                
                Text("Welcome")
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("This is the ever-famous TempConverter turned into a working iOS app. This is a moment of great celebration! People of the Earth, rejoice!")
                    .foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
        }
        .navigationBarTitle("Info", displayMode: .inline)
    }
  }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
