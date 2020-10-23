//
//  NetworkClient.swift
//  MoviesApp
//
//  Created by A on 20/10/2020.
//  Copyright © 2020 amr zayed. All rights reserved.
//

import Foundation
import Alamofire

class NetworkClient{
    static func performRequest<T: Decodable>(_ object: T.Type, url: String, completion: @escaping ((Result<T, Error>) -> Void)){
        AF.request(url).responseJSON { (response) in
            do{
                let model = try JSONDecoder().decode(T.self, from: response.data!)
                completion(.success(model))
            }catch let error{
                completion(.failure(error))
            }
        }
    }
}
