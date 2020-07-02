//
//  Profile.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import Foundation

struct Profile: Identifiable {
    var id = UUID()
    var name: String
    var photo: String
}
