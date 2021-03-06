//
//  PostView.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct PostView: View {
    @State private var showActionSheet = false
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(post.author.photo)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 35, height: 35)
                VStack(alignment: .leading) {
                    Text(post.author.name)
                        .font(.subheadline)
                        .bold()
                    post.location.map { location in
                        Text(location)
                            .font(.footnote)
                    }
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .onTapGesture {
                        self.showActionSheet = true
                }
            }.padding(.horizontal)
            Image(post.photo)
                .resizable()
                .scaledToFit()
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: post.liked ? "heart.fill" : "heart")
                    .foregroundColor(post.liked ? .red : .primary)
                Image(systemName: "bubble.right")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: post.bookmarked ? "bookmark.fill" : "bookmark")
            }.padding(.horizontal)
            Text("\(post.numberOfLikes) likes")
                .font(.subheadline)
                .bold()
                .padding(.horizontal)
            (Text(post.author.name)
                .bold()
                +  Text(" \(post.description)"))
                .lineLimit(2)
                .font(.subheadline)
                .padding(.horizontal)
        }.actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Please choose an action or cancel"), buttons: [
                .destructive(Text("Report")),
                .default(Text("Copy link").foregroundColor(Color.primary)),
                .default(Text("Share to…")),
                .default(Text("Turn on Post Notifications")),
                .default(Text("Mute")),
                .default(Text("Unfollow")),
                .cancel()
            ])
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostView(post: posts[0])
            PostView(post: posts[0])
                .preferredColorScheme(.dark)
        }
        .previewLayout(.sizeThatFits)
        .previewDisplayName("Post View")
    }
}
