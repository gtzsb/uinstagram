//
//  PostsList.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct PostsList: View {
    var posts: Array<Post> = DataRepository.posts
    
    // Hide separator between list items
    init() {
        UITableView.appearance().separatorColor = .clear
    }
    
    var body: some View {
        List {
            StoriesScroll()
                .listRowInsets(EdgeInsets())
            
            Divider()
                .padding(.zero)
                .listRowInsets(EdgeInsets())
            
            ForEach(posts) { post in
                PostDetail(post: post)
            }
            .listRowInsets(EdgeInsets())
        }
    }
}

struct PostsList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostsList()
            PostsList()
                .colorScheme(.dark)
                .background(Color.black)
        }
        .previewLayout(.sizeThatFits)
        .previewDisplayName("Posts List")
    }
}
