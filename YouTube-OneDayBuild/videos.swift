//
//  videos.swift
//  YouTube-OneDayBuild
//
//  Created by Admin on 10/06/20.
//  Copyright © 2020 Ashok@apponward. All rights reserved.
//

import Foundation
struct Video: Decodable {
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var publised = Date()
    
    
    enum codingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
    
        case videoId
        case title
        case description
        case thumbnail = "url"
        case publised  = "publishedAt"
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: codingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: codingKeys.self, forKey: .snippet)
        
        // parse the title
        
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        
        // parse the description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        
        // parse the published at
        self.publised = try snippetContainer.decode(Date.self, forKey: .publised)
        
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: codingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: codingKeys.self, forKey: .high)
        
        // parse the thumbnail
        
        self.thumbnail = try thumbnailContainer.decode(String.self, forKey: .thumbnail)
        
        let resourceIdConatiner = try snippetContainer.nestedContainer(keyedBy: codingKeys.self, forKey: .videoId)
    
        // parse the videoId
        
        self.videoId = try resourceIdConatiner.decode(String.self, forKey: .videoId)
        
    }

    
}
