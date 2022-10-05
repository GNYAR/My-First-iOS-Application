//
//  Exchanges.swift
//  MyFirstApp
//
//  Created by User20 on 2022/10/1.
//

import SwiftUI

struct ExchangeItem: Identifiable {
  let id = UUID()
  
  let img: String
  let name: String
  let price1: Int?
  let price2: [Int]
  
  init(img: String, name: String, price1: Int? = nil, price2: [Int] = []) {
    self.img = img
    self.name = name
    self.price1 = price1
    self.price2 = price2
  }
}

struct Exchanges: View {
  let exchangeItems: [ExchangeItem] = [
    ExchangeItem(img: "Exchange_1", name: "大麥克", price1: 75, price2: [37, 38]),
    ExchangeItem(img: "Exchange_2", name: "勁辣雞腿堡", price1: 75, price2: [37, 38]),
    ExchangeItem(img: "Exchange_3", name: "薯條(小)", price1: 20, price2: [10, 10]),
    ExchangeItem(img: "Exchange_4", name: "麥脆雞腿", price2: [37, 38]),
    ExchangeItem(img: "Exchange_5", name: "OREO 冰炫風", price1: 50, price2: [25, 25]),
    ExchangeItem(img: "Exchange_6", name: "大杯可口可樂", price1: 50, price2: [25, 25])
  ]
  
  
  var body: some View {
    VStack {
      Header("兌換優惠")
      Chips()
        .padding(.bottom, 8)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 12) {
          ForEach(exchangeItems) { x in
            ExchangeCard(x)
          }
        }
        .padding(.horizontal, 12)
      }
    }
  }
}

struct Chips: View {
  let chipItems: [String] = ["熱門兌換", "點數兌換", "加價兌換", "所有兌換"]
  
  let selectedChip: Int = 0;
  
  func getChipColor(_ index: Int) -> Color {
    index == selectedChip ? Color("yellow") : Color.gray.opacity(0.1)
  }
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 12) {
        ForEach(chipItems.indices) { i in
          Text(chipItems[i])
            .frame(width: 100, height: 36)
            .background(
              Capsule()
                .fill(getChipColor(i))
            )
        }
      }
      .padding(.horizontal, 12)
    }
  }
}

struct ExchangeCard: View {
  let exchageItem: ExchangeItem
  
  init(_ exchageItem: ExchangeItem) {
    self.exchageItem = exchageItem
  }
  
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      Image(exchageItem.img)
        .resizable()
        .scaledToFit()
        .frame(height:125)
      
      Group {
        Text(exchageItem.name)
          .padding(.bottom, 12)
        
        if(exchageItem.price1 != nil){
          HStack(spacing: 4) {
            Image(systemName: "p.circle.fill")
              .resizable()
              .frame(width: 20, height: 20)
              .foregroundColor(Color("yellow"))
            
            Text("\(exchageItem.price1!)")
              .fontWeight(.bold)
          }
        }
        
        if(exchageItem.price2.count >= 2){
          HStack(spacing: 4) {
            Image(systemName: "p.circle.fill")
              .resizable()
              .frame(width: 20, height: 20)
              .foregroundColor(Color("yellow"))
            
            Text("\(exchageItem.price2[0])")
              .fontWeight(.bold)
            Text("+")
              .foregroundColor(Color("red"))
            Text("\(exchageItem.price2[1])元")
          }
        }
      }
      .padding(.leading, 16)
      
      Spacer()
      
      HStack {
        Spacer()
        
        Text("兌換")
          .foregroundColor(Color("yellow"))
          .frame(width: 64, height: 36)
          .background(
            Capsule()
              .stroke(Color("yellow"))
          )
        
        Spacer()
      }
      .padding(.bottom,12)
    }
    .background(Color.white)
    .cornerRadius(10)
  }
}
