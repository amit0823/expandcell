//
//  ApiManager.swift
//  MachineTEST
//
//  Created by Brainwork Technologies on 18/08/2020.
//  Copyright © 2020 Advatix Inc. All rights reserved.
//

import Foundation
//
//  ApiManager.swift
//  codeble
//
//  Created by prashant on 23/08/19.
//  Copyright © 2019 prashant. All rights reserved.
//

import Foundation

struct AppKeys{
    static let googleKey = "AIzaSyAy35vEh2mpjQUeW6wx_FKpqjxoc3W88bQ"
}



class ApiManager{
    
    static let shared = ApiManager();
    
    enum APIServiceError:Error {
        case apiError
        case invalidEndPoint
        case invalidResponse
        case noData
        case decodeError
    }
    
    private let jsonDecoder = JSONDecoder()
    
    typealias dictionary = [String: Any]
    typealias array = [Any]
 
    // function callApi start
    func callApi<T: Decodable>(
        apiUrl:String,                              //  apiUrl: Enter API URL
        apiKey:String? = nil,                       //  apiKey: Enter API Key
        method:String = "GET",
        dataParams:dictionary? = nil,               //  dataPrams: In a form of dictionary: what you want to POST
        auth:String? = nil,                         //  auth: authantication key set on header
        completion: @escaping (Result<T, APIServiceError>) -> Void){
        
        let url = URL(string: apiUrl)
      
        URLSession.shared.datatask(with: url!) { (result) in
            
            switch result{
            case .success(let (response, data)):
                guard let statusCode = (response as? HTTPURLResponse)?.statusCode, 200..<299 ~= statusCode else {
                    completion(.failure(.invalidResponse))
                    return
                }
                do {
                    //here dataResponse received from a network request
                    let model = try self.jsonDecoder.decode(T.self, from:
                        data) //Decode JSON Response Data
                    //print("model===>",model)
                    completion(.success(model))
                } catch let parsingError {
                    print("Error===>", parsingError)
                    completion(.failure(.decodeError))
                }
            case .failure(_):
                completion(.failure(.apiError))
            }
        }.resume()
    }       // function callApi end
    
    
    func callApiWithUrlRequest<T: Decodable>(
        apiUrl:String,                              //  apiUrl: Enter API URL
        apiKey:String? = nil,                       //  apiKey: Enter API Key
        method:String = "GET",
        dataParams:dictionary? = nil,               //  dataPrams: In a form of dictionary: what you want to POST
        auth:String? = nil,                         //  auth: authantication key set on header
        completion: @escaping (Result<T, APIServiceError>) -> Void){
        
       
        
        
        let url = URL(string: apiUrl)
        var request: URLRequest = URLRequest(url: url!)
       
       // print("apiUrl===>", apiUrl,dataParams!)
        
        if let dataParams = dataParams{
            if !dataParams.isEmpty {
                var paramData : Data?
                do {
                    paramData = try JSONSerialization.data(withJSONObject: dataParams, options:[])
                    
                   // print("dataParams===>"  , dataParams)
                    request.httpBody = paramData
                } catch{
                }
            }
        }
        
        
        request.addValue("application/json;charset=utf-8", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue("com.arteriatech.mDealerConnect", forHTTPHeaderField: "x-smp-appid")
        request.setValue("Basic \(auth!)", forHTTPHeaderField: "Authorization")
        request.httpMethod = method
        request.timeoutInterval = 60
        
        
        URLSession.shared.datatask(with: request) { (result) in
            
            switch result{
            case .success(let (_, data)):
//                guard let statusCode = (response as? HTTPURLResponse)?.statusCode, 200..<299 ~= statusCode else {
//                    completion(.failure(.invalidResponse))
//                    return
//                }
                do {
                    
                   
                    let dict = try JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
                    print (dict)
                        
                    
                    let model = try self.jsonDecoder.decode(T.self, from:
                        data) //Decode JSON Response Data
                    //print("model===>",model)
                    completion(.success(model))
                } catch let parsingError {
                    
                    print("Error===>", parsingError)
                    completion(.failure(.decodeError))
                }
            case .failure(_):
                completion(.failure(.apiError))
            }
        }.resume()
    }
}

extension URLSession{
    func  datatask(with url:URL, result: @escaping (Result<(URLResponse, Data),Error>)->Void) -> URLSessionDataTask {
        return dataTask(with: url){(data, response, error) in
            
            //print("data===>",data)
            //print("response===>",response)
            //print("error===>",error)
            
            if let error = error{
                result(.failure(error))
                return
            }
            guard let response = response, let data = data else {
                let error = NSError(domain: "error", code: 0, userInfo: nil)
                result(.failure(error))
                return
            }
            result(.success((response, data)))
        }
    }
    
    func  datatask(with urlRequest:URLRequest, result: @escaping (Result<(URLResponse, Data),Error>)->Void) -> URLSessionDataTask {
        return dataTask(with: urlRequest){(data, urlResponse, error) in
            
            //print("data===>",data)
            //print("response===>",urlResponse)
            //print("error===>",error)
            
            if let error = error{
                result(.failure(error))
                return
            }
            guard let urlResponse = urlResponse, let data = data else {
                let error = NSError(domain: "error", code: 0, userInfo: nil)
                result(.failure(error))
                return
            }
            result(.success((urlResponse, data)))
        }
    }
    

}

