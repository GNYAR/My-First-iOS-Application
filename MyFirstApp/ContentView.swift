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
      Color(.gray)
        .opacity(0.02)
        .ignoresSafeArea()
      
      VStack {
        Toolbar(unreadNotificationCount: 3)
        
        ScrollView(showsIndicators: false) {
          VStack(alignment: .leading, spacing: 20) {
            Text("午安！")
              .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
              .padding(.horizontal, 16)
            Carousel()
            MyWallet()
            TaskCard()
            Shortcuts()
            VStack(alignment: .leading, spacing: 36){
              Events()
              Tasks()
              Exchanges()
            }
            .padding(.bottom, 72)
          }
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          minHeight: 0,
          maxHeight: .infinity,
          alignment: .topLeading
        )
        .padding(.bottom, 60)
        .overlay(Navigation(), alignment: .bottom)
        .overlay(
          LittleHelper(),
          alignment: .bottomTrailing
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
