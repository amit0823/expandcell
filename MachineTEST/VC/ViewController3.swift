//
//  ViewController3.swift
//  MachineTEST
//
//  Created by Brainwork Technologies on 24/08/2020.
//  Copyright © 2020 Advatix Inc. All rights reserved.
//

import UIKit

class ViewController3: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    @IBOutlet weak var table:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          20
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  =  tableView.dequeueReusableCell(withIdentifier: "1") as! vc3
        cell.lbl_Name.text =   String(indexPath.row + 1)
        cell.tag = indexPath.item

        return cell
      }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    let cell = textField.superview?.superview as! vc3 // track you view hierarchy
    cell.lbl_Name?.text = textField.text
    textField.resignFirstResponder()
    return true
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField){
    let cell = textField.superview?.superview as! vc3 // track you view hierarchy
      cell.lbl_Name?.text = textField.text
    }
    
    
    @IBAction func saveBtnAction(_ sender: Any) {

        for i in 0..<20
        {
        let index = IndexPath(row: i, section: 0)
        let cell = self.table.cellForRow(at: index) as! vc3
       let alias = cell.lbl_Name.text!
       print(alias)

        }
    }
}


