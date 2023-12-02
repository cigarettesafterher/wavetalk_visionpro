//
//  SideMenuItem.swift
//  WavetalkApp
//
//  Created by Lucas Pita on 4/11/23.
//

import SwiftUI

struct SideMenuItem: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var icon: String
       
    }

let sideMenuItems: [SideMenuItem] = [
    SideMenuItem(name: "Recently Added", icon: "clock"),
    SideMenuItem(name: "Artists", icon: "music.mic"),
    SideMenuItem(name: "Albums", icon: "square.stack"),
    SideMenuItem(name: "Songs", icon: "music.note"),
    SideMenuItem(name: "Made For You", icon: "person.crop.square"),

]
