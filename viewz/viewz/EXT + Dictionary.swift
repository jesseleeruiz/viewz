//
//  EXT + Dictionary.swift
//  viewz
//
//  Created by Jesse Ruiz on 9/8/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import Foundation

extension Dictionary where Key == String {
    func bool(for key: String) -> Bool? {
        self[key] as? Bool
    }
    
    func double(for key: String) -> Double? {
        self[key] as? Double
    }
    
    func int(for key: String) -> Int? {
        self[key] as? Int
    }
    
    func string(for key: String) -> String? {
        self[key] as? String
    }
}
