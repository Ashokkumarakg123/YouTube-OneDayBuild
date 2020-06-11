//
//  Response.swift
//  YouTube-OneDayBuild
//
//  Created by Admin on 11/06/20.
//  Copyright © 2020 Ashok@apponward. All rights reserved.
//

import Foundation

struct Response: Decodable {
    var items: [Video]?
    
    enum codingKeys: String, CodingKey {
        
    
     case items
    
    }
    
    init(decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
        
    }
}
