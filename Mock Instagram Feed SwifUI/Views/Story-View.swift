//
//  Story-View.swift
//  Mock Instagram Feed SwifUI
//
//  Created by Kody Young on 8/14/21.
//

import SwiftUI

struct StoryView: View{
    let items = DataProvider.feedList
    
    let rows = [
        GridItem(.fixed(90))
    ]

    var body: some View {

    ScrollView(.horizontal, showsIndicators: false) {

        LazyHGrid(rows: rows, alignment: .top) {
            ForEach(items, id: \.self) { item in
                VStack() {
                    Image(item.postURL).resizable()
                        .scaledToFit().clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 1))
                    Text(item.username).font(.system(size: 12, weight: .regular, design: .default))

                }
            }
        }
    }.frame(
        minWidth: 0,
        maxWidth: .infinity,
        minHeight: 0,
        maxHeight: 150,
        alignment: .topLeading
      ).padding(.top)
    }
}
