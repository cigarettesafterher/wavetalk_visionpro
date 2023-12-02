//
//  Album.swift
//  WavetalkApp
//
//  Created by Lucas Pita on 4/11/23.
//

import SwiftUI

struct Album: Identifiable{
    var id = UUID()
    var image: String
    var title: String
    var subTitle: String
}

let albums: [Album] = [
    Album(image: "cover4", title: "New Dad", subTitle: "Subtitle"),
    Album(image: "cover3", title: "Rebe", subTitle: "Subtitle"),
    Album(image: "cover2", title: "Billy Bragg", subTitle: "Subtitle"),
    Album(image: "cover1", title: "Dry CLeaning", subTitle: "Subtitle"),
]
