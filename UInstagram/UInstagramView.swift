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
                TabsView()
            }
            .navigationBarTitle("UInstagram", displayMode: .inline)
            .navigationBarItems(leading: Button(action: { print("Tapped camera") }) { Image(systemName: "camera")}
            .foregroundColor(.primary), trailing: Button(action: { print("Tapped paperplane") }) { Image(systemName: "paperplane")}
            .foregroundColor(.primary))
        }
    }
}

struct TabsView: View {
    var body: some View {
        TabView {
            PostsView()
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
        .font(.headline)
        .accentColor(.primary)
    }
}

struct StoriesView: View {
    var profiles: Array<Profile> = DataRepository.profiles
    private let paddingValue: CGFloat = 3
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center) {
                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("profile00").clipShape(Circle())
                        Image(systemName: "plus.circle.fill").foregroundColor(Color(UIColor.systemBlue)).background(Color(UIColor.systemBackground)).font(.body).clipShape(Circle()).overlay(Circle().stroke(Color(UIColor.systemBackground), lineWidth: 1))
                    }.padding(paddingValue)
                    Text("Your story")
                }
                ForEach(profiles) { profile in
                    VStack {
                        Image(profile.photo).clipShape(Circle()).padding(self.paddingValue).overlay(Circle().stroke(Color(UIColor.systemRed), lineWidth: self.paddingValue - 1))
                        Text(profile.name)
                    }
                }
            }
            .padding(.vertical)
            .font(.caption)
        }
    }
}

struct PostsView: View {
    var posts: Array<Post> = DataRepository.posts
    
    var body: some View {
        List {
            StoriesView()
            ForEach(posts) { post in
                PostView(post: post)
            }
        }
    }
}

struct PostView: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Author(post: post)
            Image(post.photo).resizable().scaledToFit().onTapGesture {
                print("Tapped \(self.post)")
            }
            Actions()
            Text("\(post.numberOfLikes) likes").font(.footnote).fontWeight(.semibold)
            (
                Text(post.author.name).fontWeight(.semibold)
                    + Text(" \(post.description)")
                ).font(.footnote)
        }
    }
    
    struct Author: View {
        var post: Post
        
        var body: some View {
            HStack(alignment: .center) {
                Image(post.author.photo).clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(post.author.name).font(.subheadline).fontWeight(.semibold).onTapGesture {
                        print("Tapped \(self.post.author)")
                    }
                    post.location.map { location in
                        Text(location).font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "ellipsis").onTapGesture {
                    print("Tapped ellipsis")
                }
            }
        }
    }
    
    struct Actions: View {
        var body: some View {
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "heart").onTapGesture {
                    print("Tapped heart")
                }
                Image(systemName: "bubble.right").onTapGesture {
                    print("Tapped bubble")
                }
                Image(systemName: "paperplane").onTapGesture {
                    print("Tapped paperplane")
                }
                Spacer()
                Image(systemName: "bookmark").onTapGesture {
                    print("Tapped bookmark")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UInstagramView()
    }
}
