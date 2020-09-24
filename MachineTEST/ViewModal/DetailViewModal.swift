//
//  DetailViewModal.swift
//  MachineTEST
//
//  Created by Brainwork Technologies on 18/08/2020.
//  Copyright © 2020 Advatix Inc. All rights reserved.
//

import Foundation
//
//  ViewModal.swift
//  MachineTEST
//
//  Created by Brainwork Technologies on 18/08/2020.
//  Copyright © 2020 Advatix Inc. All rights reserved.
//
//
//  TrackViewModal.swift
//  LMS
//
//  Created by Brainwork Technologies on 30/06/2020.
//  Copyright © 2020 Advatix Inc. All rights reserved.
//



    import Foundation
    import  UIKit
protocol DetailsViewModaldelegate:class {
        func didreceiveResponse(error:String,response:DetailsResponse?)
    }

    class DetailsViewModal
    {


        weak var delegate:DetailsViewModaldelegate?


        func RequestforDetailsListData(username:String,Password:String,orderNumber:String)
          {

            
             // let param =   ["userId":userid,"tokenId":token]

            let loginString = String(format: "%@:%@", username, Password)
                       let loginData = loginString.data(using: String.Encoding.utf8)!
                       let base64LoginString = loginData.base64EncodedString()
                       
            
            
            
            
           let url =  ApiUrls.Detailsapi + "('\(orderNumber)')?$expand=SOItemDetails,SOConditions,SOTexts"
            
            ApiManager.shared.callApiWithUrlRequest(apiUrl:url , apiKey: nil, method: "GET", dataParams:nil, auth: base64LoginString) {(result: Result<DetailsResponse,ApiManager.APIServiceError>) in

     switch result{
         case .success(let response):
            if(response.d != nil) {

                self.delegate?.didreceiveResponse(error:"", response: response)
             }else{
                 DispatchQueue.main.async {
                self.delegate?.didreceiveResponse(error:"error" , response: nil)

                 }
                 break
             }
         case .failure(let error):
             print(error.localizedDescription)

                self.delegate?.didreceiveResponse(error:"error", response: nil)

             break
                             }
                         }


                 }



    }







