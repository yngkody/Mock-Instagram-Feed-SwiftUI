//
//  DataProvider.swift
//  Mock Instagram Feed SwifUI
//
//  Created by Kody Young on 7/31/21.
//

import Foundation

class DataProvider: NSObject {
    public static var feedList = [
        FeedItem(username: "@saturn", caption: "I can see everything from here..", postURL: "saturnday2"),
        FeedItem(username: "@echoeco", caption: "Hollow and cold, Eco is an echo", postURL: "eco2"),
        FeedItem(username: "@cosmo", caption: "Universe set up p nice", postURL: "comicbrownie"),
        FeedItem(username: "@eyedoc", caption: "I can see everything from here..", postURL: "eye"),
        FeedItem(username: "@psIV", caption: "let the past be the past", postURL: "controller"),
        FeedItem(username: "@kalel", caption: "Open up your mind", postURL: "houseofel"),
        FeedItem(username: "@bGenius", caption: "Brain Storm", postURL: "brainstorm"),
        FeedItem(username: "@pluto", caption: "Pluto x Baby Pluto", postURL: "babypluto"),
        FeedItem(username: "@teezytay", caption: "It's all about timing", postURL: "controll")
    ]
    
}
