//
//  MyWallet.swift
//  MyFirstApp
//
//  Created by User20 on 2022/9/30.
//

import SwiftUI

struct MyWallet: View {
  let valueItems: [Item] = [
    Item(icon: "dollarsign.circle.fill", label: "儲值金", value: 130),
    Item(icon: "p.circle.fill", label: "點數", value: 149),
    Item(icon: "gamecontroller.fill", label: "積分", value: 285, iconColor: Color.yellow),
    Item(icon: "bag.fill", label: "商品券", value: 0),
    Item(icon: "ticket.fill", label: "優惠券", value: 0, iconColor: Color.yellow)
  ]
  
  var body: some View {
    LazyVGrid(columns: getFlexibleGridItems(5), content: {
      ForEach(valueItems){ x in
        ValueItem(item: x)
      }
    })
  }
}

struct ValueItem: View {
  let item: Item
  
  var body: some View {
    VStack(spacing: 0) {
      Image(systemName: item.icon)
        .resizable()
        .scaledToFit()
        .frame(width: 20, height: 20)
        .foregroundColor(item.iconColor)
      
      Text(item.label)
        .font(.footnote)
        .fontWeight(.light)
        .padding(.vertical, 8)
      
      Text("\(item.value)")
        .font(.title3)
        .fontWeight(.bold)
    }
  }
}
