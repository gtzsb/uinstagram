//
//  Image.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import SwiftUI

extension Image {
    func circleShaped() -> some View {
        self.clipShape(Circle())
    }
    
    func circleShapedWithGradientBorder() -> some View {
        let paddingValue: CGFloat = 3
        let angularGradient = AngularGradient(gradient: Gradient(colors: [.systemOrange, .systemPurple, .systemOrange]), center: .center, angle: .degrees(135))
        return self.circleShaped().padding(paddingValue).overlay(Circle().strokeBorder(angularGradient, lineWidth: paddingValue - 1))
    }
}
