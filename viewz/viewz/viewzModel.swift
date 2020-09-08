//
//  viewzModel.swift
//  viewz
//
//  Created by Jesse Ruiz on 9/8/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import Foundation

class viewzModel {
    
    // MARK: - Methods
    func getVideos() {
        
        let url = URL(string: Constants.apiURL)!
        
        let session = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                NSLog("Error: \(error)")
                return
            }
            
        }
        session.resume()
    }
}
