//
//  DetailsVC.swift
//  MachineTEST
//
//  Created by Brainwork Technologies on 18/08/2020.
//  Copyright © 2020 Advatix Inc. All rights reserved.
//

    import UIKit
    import  Foundation
    class DetailsVC: UIViewController ,DetailsViewModaldelegate{

        @IBOutlet weak var ordernum:UILabel!
        @IBOutlet weak var ordertype:UILabel!
        @IBOutlet weak var table:UITableView!
        @IBOutlet weak var table2:UITableView!

        
         let username = "P2000107764"
         let password = "Welcome@12345"
         var orderNUmber:String = ""
        var hiddenSections = Set<Int>()
        
        var titles:[String] = ["Order Value","itmes"]
    private var viewModal = DetailsViewModal()
    private var detailsListData:DetailsResponse?
    
        var flg = false
        
        let vc = ViewController()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.title = "Track Details"
        
        
        vc.closure(name: "amit"){[weak self ](name) in
        
            print("name...",name)
            
            self?.vc.closure(name: "amit"){[weak self ](name) in
               
                   print("name...2",name)
               
               }
        }
        
       
        
      
//        viewModal.delegate = self
//        viewModal.RequestforDetailsListData(username: username, Password: password, orderNumber: orderNUmber)
//
//
//        table.tableFooterView = UIView()
        
        
    }

        
        func SetUI()
        {
             DispatchQueue.main.async {
            
                self.ordernum.text = self.detailsListData?.d?.soNo
                self.ordertype.text = self.detailsListData?.d?.orderType
            }
            
        }
            
            
            func didreceiveResponse(error: String, response: DetailsResponse?) {
                if error == "" && (response?.d != nil)

                {
                    detailsListData = response
//
                    SetUI()
                    DispatchQueue.main.async {
                        self.table.reloadData()

                    }
                }


        }


    }


        extension DetailsVC:UITableViewDataSource,UITableViewDelegate
        {
            
             func numberOfSections(in tableView: UITableView) -> Int {
               
                return titles.count
                
                
              }
            
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                
                
                if self.hiddenSections.contains(section) {
                           return 0
                       }
                       
               if section == 0
               {
                return self.detailsListData?.d?.soConditions.results.count ?? 0
                }else
                {
                
                return self.detailsListData?.d?.soItemDetails.results.count ?? 0

                
                }
                
                }
                
            

            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               
                if indexPath.section == 0
                {
                
                 let cell = tableView.dequeueReusableCell(withIdentifier: "ExpandTableViewCell") as! ExpandTableViewCell
                cell.lbl_Name.text =  self.detailsListData?.d?.soConditions.results[indexPath.row].conditionTypeDesc
                cell.lbl_Quantity.text =  self.detailsListData?.d?.soConditions.results[indexPath.row].conditionBaseValue
                    
                    return cell

                }else
                {
                     let cell = tableView.dequeueReusableCell(withIdentifier: "itemsableViewCell") as! itemsableViewCell
                    
                    cell.lbl_Quantity.text = (self.detailsListData?.d?.soItemDetails.results[indexPath.row].quantity ?? "NA") + " NOS"
                    
                    cell.lbl_rate.text =  "₹ " + (self.detailsListData?.d?.soItemDetails.results[indexPath.row].netAmount ?? "nA")
                    
            cell.lbl_Name.text = self.detailsListData?.d?.soItemDetails.results[indexPath.row].material
                    
              return cell
                    
                }

            }
           
            func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
              
               let sectionButton = UIButton()
                                  sectionButton.setTitle("Order Value",
                                                         for: .normal)
                                  sectionButton.backgroundColor = .yellow
                                  sectionButton.tag = section
                                  sectionButton.addTarget(self,
                                                          action: #selector(DetailsVC.handleTap(sender:)),
                                                          for: .touchUpInside)
                               sectionButton.setTitleColor(.black, for: .normal)
                             
                               sectionButton.contentHorizontalAlignment = .center

                                  return sectionButton
                
               
                }
                
               
               
            
            
            
            func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
               
                return 73
            }
            
            func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
               
                return 55
                
            }
            
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
              
              //  hideSection(sender: indexPath.section)
                    
                
            }
            
            
               
    
               @objc func handleTap(sender: UIButton) {

                let section = sender.tag

                print("section",section)

                
                   func indexPathsForSection() -> [IndexPath] {
                       var indexPaths = [IndexPath]()
                       
                    if section == 0
                    {
                    
                    for row in 0..<self.detailsListData!.d!.soConditions.results.count {
                           indexPaths.append(IndexPath(row: row,
                                                       section: section))
                       }
                    }else
                    {
                        
                        for row in 0..<self.detailsListData!.d!.soItemDetails.results.count {
                                                 indexPaths.append(IndexPath(row: row,
                                                                             section: section))
                                             }
                        
                        
                    }
                       
                       return indexPaths
                   }
                
                
                
                   
                   if self.hiddenSections.contains(section) {
                    

                       self.hiddenSections.remove(section)
                       self.table.insertRows(at: indexPathsForSection(),
                                             with: .left)
                    
                    
                   } else {

                       self.hiddenSections.insert(section)
                       self.table.deleteRows(at: indexPathsForSection(),
                                                 with: .right)

                   }
                
               
            }


        }


