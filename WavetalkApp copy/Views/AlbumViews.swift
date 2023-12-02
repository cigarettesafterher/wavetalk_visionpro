
//  AlbumViews.swift
//  WavetalkApp
//
//  Created by Lucas Pita on 4/11/23.
//

import SwiftUI

struct AlbumsView: View {
    @State private var searchText: String = ""
    let colums: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    var body: some View {
        
        
        
        
        
        ScrollView {
            
            
            VStack(alignment: .leading, spacing: 10){
                HStack (spacing:20){
                    Image("square") // Use the image name directly
                        .resizable()
                        .frame(width: 150, height: 140)
                        .cornerRadius(10)
                    
                    
                    VStack (alignment: .leading){
                        Text("Project")
                            .foregroundStyle(.tertiary)
                        Text("Our Project")
                            .font(.largeTitle)
                        
                        HStack {
                            Button {
                            } label: {
                                HStack {
                                    Text("R")
                                    
                                }
                                
                                .fixedSize()
                            }
                            .clipShape(Circle())
                            .buttonStyle(.borderedProminent)
                            .frame(width: 30, height: 30)
                            .cornerRadius(100)
                            .tint(Color(.green))
                            
                            
                            Text("User 1")
                                .monospaced()
                                .font(.system(size: 8, weight: .bold))
                            
                            
                            
                        }
                        
                        
                        
                    }
                    
                }
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
                .padding(.horizontal, 8)
            }
            // .background(Color(uiColor: UIColor.systemGreen)
            //  TextField("Search in Albums", text: $searchText)
            //   .textFieldStyle(.roundedBorder)
            //    .padding(.top, 8)
            
            
            
            
            LazyVGrid(columns: colums, spacing: 40) {
                ForEach(albums) { album in
                    Button(action: {}) {
                        VStack (alignment: .leading) {
                            Image(album.image) // Use the image name directly
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .scaledToFit()
                                .cornerRadius(10)
                                .aspectRatio(1, contentMode: .fill)
                            
                            
                                .scaledToFit()
                                .padding(.horizontal, 8)
                            
                            
                            
                            
                            Text(album.title)
                                .lineLimit(1)
                            Text(album.subTitle)
                                .foregroundStyle(.tertiary)
                                .lineLimit(1)
                            
                        } .hoverEffect()
                        
                        
                    }.buttonStyle(.plain)
                    
                    
                }
                .padding(.top, 8)
            }
            
        }.padding(.horizontal, 40)
            .padding(.top, 8)
        
        
        
        
        
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    HStack{
                        
                        Button {
                        } label: {
                            HStack {
                                Image(systemName: "chevron.left")
                                
                            }
                            
                            .fixedSize()
                        }
                        .clipShape(Circle())
                        .buttonStyle(.borderedProminent)
                        
                        
                        
                        Button {
                        } label: {
                            HStack {
                                Image(systemName: "chevron.right")
                                
                            }
                            
                            .fixedSize()
                        }
                        .clipShape(Circle())
                        .buttonStyle(.borderedProminent)
                        
                    }
                    
                    
                }
                ToolbarItem {
                    
                    Button {
                    } label: {
                        HStack {
                            Text("R")
                            
                        }
                        
                        .fixedSize()
                    }
                    .clipShape(Circle())
                    .buttonStyle(.borderedProminent)
                    .frame(width: 30, height: 30)
                    .cornerRadius(100)
                    .tint(Color(.green))
                    
                    
                }
                ToolbarItem {
                    
                    Button {
                        
                    } label: {
                        
                        HStack {
                            
                            Image(systemName: "plus")
                            Text("Demo")
                            Divider()
                        }
                        .fixedSize()
                        
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.941, green: 0.305, blue: 0.116))
                    
                    
                    
                }
                ToolbarItem {
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "")
                            Text("Share")
                            Divider()
                        }
                        
                        .frame(width: 80, height: 45)
                        .cornerRadius(6)
                        
                        
                    }
                    .buttonStyle(.borderedProminent)
                    
                    
                    
                }
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomOrnament) {
                    HStack {
                        Button {} label: {
                            Image(systemName:  "backward.fill")
                            
                            
                        }
                        Button {} label: {
                            Image(systemName:  "pause.fill")
                            
                            
                        }
                        Button {} label: {
                            Image(systemName:  "forward.fill")
                        }
                        PlayingSongCardView()
                        
                        Button {} label: {
                            Image(systemName:  "quote.bubble")
                            
                        }
                        Button {} label: {
                            Image(systemName:  "list.bullet")
                            
                        }
                        Button {} label: {
                            Image(systemName:  "speaker.wave.3.fill")
                            
                        }
                        
                        
                    }
                }
            }
    }
}

struct PlayingSongCardView: View {
    var body: some View {
        HStack {
            Image("cover1") // Use the image name directly
                .resizable()
                .frame(width: 48, height: 48)
                .cornerRadius(6)
            
            VStack (alignment: .leading) {
                Text("Las Flooores")
                Text("Ashleys")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }.frame(width: 160, alignment: .leading)
            Button(action: {}) {
                Image(systemName: "ellipsis")
            }.buttonBorderShape(.circle)
            
            
            
        }
        .padding(.all, 8)
        .background(.regularMaterial, in: .rect(cornerRadius: 14))
    }
}
