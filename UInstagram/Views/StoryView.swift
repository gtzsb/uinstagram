//
//  StoryView.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct StoryView: View {
    var profile: Profile
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(LinearGradient(gradient: Constants.facebookGradient, startPoint: .bottomLeading, endPoint: .topTrailing))
                    .frame(width: 65, height: 65)
                Circle()
                    .fill(Color.systemBackground)
                    .frame(width: 60, height: 60)
                Image(profile.photo)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 55, height: 55)
            }
            Text(profile.name)
                .font(.footnote)
                .scaledToFit()
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StoryView(profile: profiles[0])
            StoryView(profile: profiles[0])
                .preferredColorScheme(.dark)
        }
        .previewLayout(.sizeThatFits)
        .previewDisplayName("Story View")
    }
}
