//
//  Response.swift
//  viewz
//
//  Created by Jesse Ruiz on 9/8/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import Foundation

struct Response: Decodable {
    
    var items: [Video]?
    
    enum CodingKeys: String, CodingKey {
        
        case items
    }
    
    init (from decoder: Decoder) throws {
        
        let itemsContainer = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try itemsContainer.decode([Video].self, forKey: .items)
    }
}
