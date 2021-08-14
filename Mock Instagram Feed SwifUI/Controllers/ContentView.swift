//
//  ContentView.swift
//  Mock Instagram Feed SwifUI
//
//  Created by Kody Young on 7/31/21.
//

import SwiftUI

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
