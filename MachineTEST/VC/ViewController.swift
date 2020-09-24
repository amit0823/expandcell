//
//  ViewController.swift
//  MachineTEST
//
//  Created by Brainwork Technologies on 18/08/2020.
//  Copyright © 2020 Advatix Inc. All rights reserved.
//

import UIKit
import  Foundation
class ViewController: UIViewController ,ViewModaldelegate{

   
       
        @IBOutlet weak var table:UITableView!
    
    
     let username = "P2000107764"
     let password = "Welcome@12345"

        
        private var viewModal = ViewModal()
        private var TrackListData:APIResponse?
        
        override func viewDidLoad()
        {
            super.viewDidLoad()
            
            self.title = "Track Result"
          
//            viewModal.delegate = self
//            viewModal.RequestforTrackrListData(username: username, Password: password)

        }

        
        
        func didreceiveResponse(error: String, response: APIResponse?) {
            if error == "" && (response?.d.results.count ?? 0 > 0)

            {
                TrackListData = response
                DispatchQueue.main.async {
                    self.table.reloadData()

                }
            }


    }


}
    extension ViewController:UITableViewDataSource,UITableViewDelegate
    {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell

//            cell.lbl_num.text = TrackListData?.d.results[indexPath.row].soNo
//            cell.lbl_rate.text = "₹ " + (TrackListData?.d.results[indexPath.row].totalAmount)!
            let numbers = TrackListData?.d.results[indexPath.row].orderDate.components(separatedBy: ["(", ")", "/"])
            
          //  cell.lbl_date.text = Double(numbers![2])!.getDateStringFromUTC()

            return cell

        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "DetailsVC") as? DetailsVC
            
            vc?.orderNUmber = TrackListData?.d.results[indexPath.row].soNo ??  "12345"
            self.navigationController?.pushViewController(vc!, animated: true)
            
            
        }
        func closure(name:String,comple:@escaping (String)->Void)
        {
            comple(name + "hello")
            
            
        }



    }
extension Double {
    
    func getDateStringFromUTC() -> String {
        let dateVar = Date.init(timeIntervalSinceNow: TimeInterval(self)/1000)
        let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "d-MMM-yyyy"

        return dateFormatter.string(from: dateVar)
    }
}
