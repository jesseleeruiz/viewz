//
//  viewzModel.swift
//  viewz
//
//  Created by Jesse Ruiz on 9/8/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import UIKit

enum NetworkingError: Error {
    case noData
    case noBearer
    case serverError(Error)
    case unexpectedStatusCode
    case badDecode
    case badEncode
}

class viewzModel {
    
    // MARK: - Methods
    func getVideos() {
        
        let url = URL(string: Constants.apiURL)!
        
        let session = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                NSLog("Error: \(error)")
                return
            }
            
            guard let data = data else {
                NSLog("No data returned.")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data)
            } catch {
                NSLog("Unable to decode")
            }
        }
        session.resume()
    }
}
