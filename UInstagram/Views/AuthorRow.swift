//
//  AuthorRow.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct AuthorRow: View {
    @State private var showActionSheet = false
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
                self.showActionSheet = true
            }
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Please choose an action or cancel"), buttons: [
                .destructive(Text("Report")),
                .default(Text("Copy link").foregroundColor(Color.primary)),
                .default(Text("Share to…")),
                .default(Text("Turn on Post Notifications")),
                .default(Text("Mute")),
                .default(Text("Unfollow")),
                .cancel()
            ])
        }.padding(.horizontal)
    }
}

struct AuthorRow_Previews: PreviewProvider {
    static var posts: Array<Post> = DataRepository.posts
    static var previews: some View {
        AuthorRow(post: posts[0])
    }
}
