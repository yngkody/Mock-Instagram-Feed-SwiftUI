//
//  Navigation-View.swift
//  Mock Instagram Feed SwifUI
//
//  Created by Kody Young on 8/14/21.
//

import SwiftUI
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
