//
//  Feed-View.swift
//  Mock Instagram Feed SwifUI
//
//  Created by Kody Young on 8/14/21.
//

import SwiftUI
struct PostView: View{
    let items = DataProvider.feedList
    let columns = [
        GridItem(.fixed(UIScreen.main.bounds.size.width))
    ]

    var body: some View {

    ScrollView(.vertical, showsIndicators: false) {
        ForEach(items, id: \.self) { item in
            LazyVGrid(columns: columns, alignment: .center) {
                VStack() {
                    Image(item.postURL).resizable().scaledToFill()
                }.padding(.bottom)
            }
            HStack() {
                Button {
                    print("Image tapped!")
                    }label: {
                        Image(systemName: "heart").frame(
                            minWidth: 0,
                            maxWidth: 40,
                            minHeight: 0,
                            maxHeight: .infinity,
                            alignment: .leading
                        ).padding(.leading).foregroundColor(.white)
                }

                Button {
                    print("Image tapped!")
                    }label: {
                        Image(systemName: "message").frame(
                            minWidth: 0,
                            maxWidth: 40,
                            minHeight: 0,
                            maxHeight: .infinity,
                            alignment: .leading
                        ).foregroundColor(.white)
                }

               
                Button {
                    print("Image tapped!")
                    }label: {
                        Image(systemName: "paperplane").frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity,
                            alignment: .leading
                        ).foregroundColor(.white)
                }

            }.padding(.bottom, 1)
            HStack(){
                Text("100 Likes").font(.system(size: 14, weight: .thin, design: .default)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading)
            }.padding(.bottom, 1)
            HStack(){
                Text(item.username).font(.system(size: 15, weight: .regular, design: .default)).padding(.leading)

                Text(item.caption).font(.system(size: 14, weight: .thin, design: .default)).frame(maxWidth: .infinity, alignment: .leading)
            }.padding(.bottom, 2)

        }
    }
   
    }
}
