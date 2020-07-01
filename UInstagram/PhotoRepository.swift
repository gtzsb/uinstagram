//
//  PhotoRepository.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 30/06/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import Foundation

struct PostRepository {
    var photos: Array<Photo> {
        [
            Photo(filename: "image1", author: "kotecinho", numberOfLikes: 192, location: "El Puerto de Santa María, Spain", description: ""),
            Photo(filename: "image2", author: "blakeverdoorn", numberOfLikes: 192, description: ""),
            Photo(filename: "image3", author: "edgarraw", numberOfLikes: 192, location: "Oakland, United States", description: ""),
            Photo(filename: "image4", author: "clintbustrillos", numberOfLikes: 192, description: ""),
            Photo(filename: "image5", author: "aaronburden", numberOfLikes: 192, description: ""),
        ]
    }
}

struct Photo: Identifiable {
    var id = UUID()
    var filename: String
    var author: String
    var numberOfLikes: Int
    var location: String?
    var description: String
}
