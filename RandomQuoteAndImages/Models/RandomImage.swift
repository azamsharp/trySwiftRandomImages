//
//  RandomImage.swift
//  RandomImage
//
//  Created by Mohammad Azam on 7/14/21.
//

import Foundation

struct RandomImage: Decodable {
    let image: Data
    let quote: Quote
}

struct Quote: Decodable {
    let content: String
}
