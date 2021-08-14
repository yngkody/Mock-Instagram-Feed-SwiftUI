//
//  Feed-View.swift
//  Mock Instagram Feed SwifUI
//
//  Created by Kody Young on 8/14/21.
//

import SwiftUI

struct FeedView: View{
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            StoryView()
            PostView()
        }
    }
}
