//
//  HomeView.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 05/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        YourStoryView()
                            .padding(.horizontal)
                        ForEach(profiles) { profile in
                            StoryView(profile: profile)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top)
                }
                Divider()
                    .padding(.vertical)
                ForEach(posts) { post in
                    PostView(post: post)
                }
            }
            .navigationBarTitle("Instagram", displayMode: .inline)
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "paperplane"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            HomeView()
                .preferredColorScheme(.dark)
        }
        .previewDisplayName("Home View")
    }
}
