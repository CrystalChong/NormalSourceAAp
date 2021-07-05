//
//  ViewController.swift
//  NormalSourceAPP
//
//  Created by Sunfairy136 on 2021/7/5.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID  = "dirayCellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = HomeDescribeCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        
        return cell!;
        
    }
    

    var tableView:UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

