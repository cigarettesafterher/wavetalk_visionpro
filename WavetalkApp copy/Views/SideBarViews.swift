//
//  SideBarViews.swift
//  WavetalkApp
//
//  Created by Lucas Pita on 4/11/23.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        
    List (sideMenuItems) { item in
            NavigationLink(value: item) {
                Label(item.name, systemImage: item.icon)
                    .foregroundStyle(.primary)
            }.navigationDestination(for: SideMenuItem.self) { item in
                //           Menu Item View
            }
        }.toolbar {
            ToolbarItem (placement: .topBarLeading){
                VStack (alignment: .leading) {
                    Text("Library")
                        .font(.largeTitle)
                    Text("All Music")
                        .foregroundStyle(.tertiary)
                }
            }
            
            ToolbarItem {
                Button(action: {}, label: {
                    Image(systemName:  "pause.fill")
                })
            
                
            }
            
        }
    }
}


