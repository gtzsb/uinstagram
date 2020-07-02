//
//  ActionsRow.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct ActionsRow: View {
    var post: Post
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: self.post.liked ? "heart.fill" : "heart").foregroundColor(self.post.liked ? Color(UIColor.systemRed) : .primary).onTapGesture {
                print("Tapped heart")
            }
            Image(systemName: "bubble.right").onTapGesture {
                print("Tapped bubble")
            }
            Image(systemName: "paperplane").onTapGesture {
                print("Tapped paperplane")
            }
            Spacer()
            Image(systemName: self.post.bookmarked ? "bookmark.fill" : "bookmark").onTapGesture {
                print("Tapped bookmark")
            }
        }.padding(.horizontal)
    }
}

struct ActionsRow_Previews: PreviewProvider {
    static var posts: Array<Post> = DataRepository.posts
    static var previews: some View {
        ActionsRow(post: posts[0])
    }
}
