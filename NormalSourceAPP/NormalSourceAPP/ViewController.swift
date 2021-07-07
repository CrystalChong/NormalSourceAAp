//
//  ViewController.swift
//  NormalSourceAPP
//
//  Created by Sunfairy136 on 2021/7/5.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    var _tableView:UITableView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _tableView = UITableView.init(frame: self.view.bounds, style: UITableView.Style.plain);
        _tableView?.delegate = self;
        _tableView?.dataSource = self;
        _tableView?.rowHeight = UITableView.automaticDimension;
        self.view.addSubview(_tableView!);
    }
    // MARK: 数据源
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // FIXME: 标记 此处为数据库数据
        return 10;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID  = "dirayCellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = DIHomeDescribeCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        
        return cell!;
        
    }

}

