//
//  Home.swift
//  MyFirstApp
//
//  Created by User20 on 2022/10/5.
//

import SwiftUI

struct Home: View {
  var body: some View {
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
        NavigationLink(
          destination: LittleHelper(),
          label: {
            LittleHelperButton()
          })
          .offset(x: -30, y: -80),
        alignment: .bottomTrailing
      )
    }
  }
}
