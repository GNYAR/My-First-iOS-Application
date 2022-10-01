//
//  ContentView.swift
//  MyFirstApp
//
//  Created by User20 on 2022/9/14.
//


import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack(alignment: .topLeading) {
      Color(.white).ignoresSafeArea() // Background
      
      VStack {
        Toolbar(unreadNotificationCount: 3)
        
        ScrollView {
          VStack(alignment: .leading, spacing: 16) {
            Text("午安！")
              .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
              .padding(.horizontal, 12)
            Carousel()
            MyWallet()
            TaskCard()
            Shortcuts()
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
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
