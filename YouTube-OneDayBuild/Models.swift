//
//  Models.swift
//  YouTube-OneDayBuild
//
//  Created by Admin on 10/06/20.
//  Copyright © 2020 Ashok@apponward. All rights reserved.
//

import Foundation

class Model {
    
    // CREATE THE URL
    
    func getVideo() {
        
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            
            return
        }
        
        
        
        // GET THE URL SESSION OBJECT
        
        let session = URLSession.shared
        
        
        // GET THE DATA TASK FROM URL SESSION
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error != nil || data == nil {
                return
            }
            
            do {
                
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                // parsing the data
                
                dump(response)
                
            }
            catch {
                
            }
        }
        
        
        // KICK THE CODE
        dataTask.resume()
        
    }
    
}
