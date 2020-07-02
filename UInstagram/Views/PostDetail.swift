//
//  PostDetail.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct PostDetail: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            AuthorRow(post: post)
            Image(post.photo).resizable().scaledToFit().onTapGesture {
                print("Tapped \(self.post)")
            }
            ActionsRow(post: post)
            Text("\(post.numberOfLikes) likes").font(.footnote).fontWeight(.semibold).padding(.horizontal)
            (
                Text(post.author.name).fontWeight(.semibold)
                    + Text(" \(post.description)")
                ).font(.footnote).padding(.horizontal).padding(.bottom)
        }
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var posts: Array<Post> = DataRepository.posts
    static var previews: some View {
        PostDetail(post: posts[0])
    }
}
