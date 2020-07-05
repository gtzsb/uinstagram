//
//  UInstagramView.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 30/06/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

let posts = DataRepository.posts
let profiles = DataRepository.profiles

struct UInstagramView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house.fill")
            }
            Text("Search").tabItem {
                Image(systemName: "magnifyingglass")
            }
            Text("Add content").tabItem {
                Image(systemName: "plus.square")
            }
            Text("Favs").tabItem {
                Image(systemName: "heart")
            }
            Text("Profile").tabItem {
                Image(systemName: "person")
            }
        }
        .accentColor(.primary)
    }
}

struct UInstagramView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UInstagramView()
            UInstagramView()
                .preferredColorScheme(.dark)
        }
        .previewDisplayName("UInstagram View")
    }
}
