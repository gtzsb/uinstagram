//
//  UInstagramView.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 30/06/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct UInstagramView: View {
    var body: some View {
        NavigationView {
            VStack {
                Tabs()
            }
            .navigationBarTitle("UInstagram", displayMode: .inline)
            .navigationBarItems(leading: Button(action: { print("Tapped camera") }) { Image(systemName: "camera")}
            .foregroundColor(.primary), trailing: Button(action: { print("Tapped paperplane") }) { Image(systemName: "paperplane")}
            .foregroundColor(.primary))
        }
    }
}

struct Tabs: View {
    var body: some View {
        TabView {
            PostsList()
                .tabItem {
                    Image(systemName: "house")
            }
            Text("Search tab")
                .tabItem {
                    Image(systemName: "magnifyingglass")
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.yellow).edgesIgnoringSafeArea(.horizontal)
            Text("Add photo tab")
                .tabItem {
                    Image(systemName: "plus.square")
            }
            Text("Favs tab")
                .tabItem {
                    Image(systemName: "heart")
            }
            Text("My profile tab")
                .tabItem {
                    Image(systemName: "person")
            }
        }
        .accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UInstagramView()
    }
}
