//
//  SplashScreenView.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 07/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

struct SplashScreenView: View {
    @State var hide = false
    
    var body: some View {
        VStack {
            if self.hide {
                UInstagramView()
            } else {
                Spacer()
                FacebookLogo()
                    .overlay(LinearGradient(gradient: Constants.facebookGradient, startPoint: .bottomLeading, endPoint: .topTrailing)
                        .mask(FacebookLogo()
                            .scaledToFill()
                        )
                )
                Spacer()
                Text("from").foregroundColor(.gray).font(.body).fontWeight(.medium).kerning(2)
                FacebookTitle()
                    .overlay(LinearGradient(gradient: Constants.facebookGradient, startPoint: .leading, endPoint: .trailing)
                        .mask(FacebookTitle()
                            .scaledToFill()
                        )
                )
                    .padding(.bottom)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation(.easeIn(duration: 0.5)) {
                    self.hide = true
                }
            }
        }
    }
}

struct FacebookTitle: View {
    var body: some View {
        Text("FACEBUIK")
            .foregroundColor(Color.systemBackground)
            .font(.headline)
            .fontWeight(.bold)
            .kerning(2)
    }
}

struct FacebookLogo: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .strokeBorder(Color.systemBackground, lineWidth: 6.5)
                .frame(width: 72, height: 72)
            Circle()
                .strokeBorder(Color.systemBackground, lineWidth: 6.5)
                .frame(width: 37, height: 37)
            Circle()
                .fill(Color.systemBackground)
                .frame(width: 8.5, height: 8.5)
                .offset(x: 20, y: -20)
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
