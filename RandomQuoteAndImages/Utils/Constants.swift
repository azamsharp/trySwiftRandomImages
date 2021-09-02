//
//  Constants.swift
//  Constants
//
//  Created by Mohammad Azam on 7/14/21.
//

import Foundation

struct Constants {
    
    struct Urls {
        
        static func getRandomImageUrl() -> URL? {
            return URL(string: "https://picsum.photos/200/300?uuid=\(UUID().uuidString)")
        }
        
        static let randomQuoteUrl: URL? = URL(string: "https://api.quotable.io/random")
        
    }
    
}
