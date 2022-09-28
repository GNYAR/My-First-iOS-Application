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
            Image("FullMenuLogo") // Logo
              .resizable()
              .frame(width: 56, height: 56)
            
            Spacer()
            
            ZStack { // Card
              RoundedRectangle(cornerRadius: 2)
                .fill(Color.red)
                .frame(width: 14, height: 24)
                .rotationEffect(.degrees(60))
              
              Circle()
                .fill(Color.white)
                .frame(width: 6, height: 6)
                .offset(x: 4, y: 1)
              
              Circle()
                .fill(Color.white)
                .frame(width: 5, height: 5)
                .offset(x: -2, y: -2)
              
              Circle()
                .fill(Color.white)
                .frame(width: 3, height: 3)
                .offset(x: -3, y: 4)
              
            }
            
            ZStack { // Notifiaction
              Image(systemName: "bell")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
              
              ZStack {
                Text("2")
                  .font(Font.system(size: 16))
                  .foregroundColor(.white)
                  .frame(width: 18, height: 18)
                  .background(Color.yellow)
                  .clipShape(Circle())
                
                Circle()
                  .stroke(Color.white, lineWidth: 2)
                  .frame(width: 18, height: 18)
              }
              .offset(x: 8, y: -8)
            }
            .padding(.horizontal, 8)
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
