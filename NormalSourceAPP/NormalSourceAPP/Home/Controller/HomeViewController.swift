//
//  HomeViewController.swift
//  NormalSourceAPP
//
//  Created by Sunfairy136 on 2021/7/6.
//

import Foundation
import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    var _tableView:UITableView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _tableView = UITableView.init(frame: self.view.bounds, style: UITableView.Style.plain);
        _tableView?.delegate = self;
        _tableView?.dataSource = self;
        _tableView?.rowHeight = UITableView.automaticDimension;
        self.view.addSubview(_tableView!);
    }
    
    // MARK: - 说明文字,带分割线
    // MARK: 说明文字,不带分割线
    //TODO: 需要提醒的文字
    //FIXME: 需要修改bug的相关说明
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


}
