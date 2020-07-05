//
//  YourStoryView.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 05/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct YourStoryView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                ZStack {
                    Circle().fill(Color.systemBackground)
                        .frame(width: 65, height: 65)
                    Image("profile00")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 55, height: 55)
                }
                ZStack {
                    Circle().fill(Color.systemBackground)
                        .frame(width: 19, height: 19)
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(.blue)
                        .background(Color.systemBackground)
                        .clipShape(Circle())
                        .frame(width: 17, height: 17)
                }
            }
            Text("Your story")
                .font(.footnote)
        }
    }
}

struct YourStoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            YourStoryView()
            YourStoryView()
                .preferredColorScheme(.dark)
        }
        .previewLayout(.sizeThatFits)
        .previewDisplayName("Your Story View")
    }
}
