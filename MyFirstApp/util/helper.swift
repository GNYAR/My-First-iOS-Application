//
//  helper.swift
//  MyFirstApp
//
//  Created by User20 on 2022/9/30.
//

import SwiftUI

struct Item: Identifiable {
  let id = UUID()
  
  let icon: String
  let iconColor: Color
  let label: String
  let value: Int
  
  init(icon: String, label: String, value: Int = 0, iconColor: Color = Color("red")) {
    self.icon = icon
    self.iconColor = iconColor
    self.label = label
    self.value = value
  }
}

func getFlexibleGridItems(_ count: Int, alignment: Alignment? = nil) -> [GridItem] {
  return Array(
    repeating: GridItem(.flexible(), alignment: alignment),
    count: count
  )
}
