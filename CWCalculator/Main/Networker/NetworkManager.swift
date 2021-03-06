//
//  NetworkManager.swift
//  CWDevTest
//
//  Created by Temitope on 23/02/2022.
//

import Foundation
import Alamofire
import SwiftyJSON

class NetworkManager {
    
    func makeRequest(requestType:HTTPMethod, url:String, params: Dictionary<String,Any>?, completionHandler: @escaping (Result<JSON,Error>)-> ()){
        
        
        AF.request(url, method: requestType, parameters: params).responseJSON {response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                completionHandler(.success(json))
            case .failure(let error):
                completionHandler(.failure(CustomHttpError.Unknown(error: error.localizedDescription)))
            }
        }
    }
}
