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
    let gradient = AngularGradient(gradient: Gradient(colors: [.orange, .purple, .orange]), center: .center, angle: .degrees(135))
    
    var body: some View {
        VStack {
            Image(profile.photo)
                .resizable()
                .clipShape(Circle())
                .frame(width: 65, height: 65)
                .overlay(Circle()
                    .strokeBorder(Color.systemBackground, lineWidth: 5))
                .overlay(Circle()
                    .strokeBorder(gradient, lineWidth: 2.5))
            Text(profile.name)
                .font(.footnote)
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
