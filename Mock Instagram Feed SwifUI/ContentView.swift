//
//  ContentView.swift
//  Mock Instagram Feed SwifUI
//
//  Created by Kody Young on 7/31/21.
//

import SwiftUI

//Add data models and providers
//Make content view code modular
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

struct FeedView: View{
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            StoryView()
            PostView()
        }
    }
}

struct DiscoverFeedView: View{
    var body: some View {
        Text("Put Discover Feed here.").font(.system(size: 12, weight: .regular, design: .default))
    }
}

struct ReelsFeedView: View{
    var body: some View {
        Text("Put Reels Feed here.").font(.system(size: 12, weight: .regular, design: .default))
    }
}

struct ShopFeedView: View{
    var body: some View {
        Text("Put Shop Feed here.").font(.system(size: 12, weight: .regular, design: .default))
    }
}

struct PFFeedView: View{
    var body: some View {
        Text("Put PF Feed here.").font(.system(size: 12, weight: .regular, design: .default))
    }
}

struct NavView: View{
    var body: some View {
    TabView{
        NavigationView {
            FeedView()
            .navigationBarTitle("Instagram", displayMode: .large)
            .navigationBarItems(trailing:
                                HStack(){
                                    Image(systemName: "plus.rectangle").padding(.trailing)
                                    Image(systemName: "message").padding(.trailing)
                                    Image(systemName: "heart").padding(.trailing)
                                }).padding(.bottom)
                }
                .tabItem {
                    Image(systemName: "house")
                }
                DiscoverFeedView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                ReelsFeedView()
                .tabItem {
                    Image(systemName: "video")
                }
                ShopFeedView()
                .tabItem {
                    Image(systemName: "bag")
                }
                PFFeedView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                }

    }.accentColor(.white)
    }
}


struct ContentView: View {
    init() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().backgroundColor = .black
    }

    var body: some View {
        NavView()
     }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
