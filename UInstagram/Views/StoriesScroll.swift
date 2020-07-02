//
//  StoriesScroll.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct StoriesScroll: View {
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
                    Text("Your story").fixedSize()
                }.padding(.leading)
                ForEach(profiles) { profile in
                    VStack {
                        Image(profile.photo).clipShape(Circle()).padding(self.paddingValue).overlay(Circle().stroke(Color(UIColor.systemRed), lineWidth: self.paddingValue - 1))
                        Text(profile.name)
                    }
                }
            }
            .padding(.top)
            .font(.caption)
        }
    }
}

struct StoriesScroll_Previews: PreviewProvider {
    static var previews: some View {
        StoriesScroll()
    }
}
