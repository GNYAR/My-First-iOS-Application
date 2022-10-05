//
//  LittleHelper.swift
//  MyFirstApp
//
//  Created by User20 on 2022/10/1.
//

import SwiftUI

struct LittleHelper: View {
  var body: some View {
    Text("小幫手")
      .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
      .foregroundColor(.white)
      .background(
        Capsule()
          .fill(Color("yellow"))
          .frame(width: 76, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
      )
      .offset(x: -30, y: -80)
  }
}
