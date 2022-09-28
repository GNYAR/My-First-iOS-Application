//
//  ContentView.swift
//  MyFirstApp
//
//  Created by User20 on 2022/9/14.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      Color(.white).ignoresSafeArea() // Background
      
      ScrollView {
        VStack {
          HStack { // Toolbar
            Image("FullMenuLogo")
              .resizable()
              .frame(width: 48, height: 48)
            
            Spacer()
            
            Image("card-heart")
              .renderingMode(.template)
              .resizable()
              .frame(width: 28, height: 28)
              .rotationEffect(.degrees(60))
              .foregroundColor(.red)
            
            ZStack {
              Image("bell-outline")
                .renderingMode(.template)
                .resizable()
                .frame(width: 28, height: 28)
                .foregroundColor(.gray)
              
              Text("2")
                .font(Font.system(size: 12))
                .foregroundColor(.white)
                .frame(width: 14, height: 14)
                .background(Color.yellow)
                .clipShape(Circle())
                .offset(x: 5, y: -5)
            }
          }
          .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
          )
          
        }
        .frame(alignment: .top)
        .padding(.horizontal, 8)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
