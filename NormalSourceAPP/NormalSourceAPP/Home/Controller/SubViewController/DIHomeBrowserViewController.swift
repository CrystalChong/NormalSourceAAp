//
//  HomeBrowserViewController.swift
//  NormalSourceAPP
//
//  Created by Sunfairy136 on 2021/7/7.
//

import Foundation
import UIKit

class DIHomeBrowserViewController : BaseViewController,UITableViewDelegate,UITableViewDataSource, classa{
    
    func attendance() -> String {
        return "asdasdas"
    }
    
    func markssecured() -> String {
        return "asdasd"
    }
    
    var _tableView:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // .title = "文字";
//        self.navigationController?.tabBarController?.tabBarItem.title = "首页";
        self.setTitle(text: "文字")
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
            cell = DIHomeDescribeCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
            
        }
        let ce = cell as! DIHomeDescribeCell;
        ce.ss = self;
        
        return cell!;
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
    
}


