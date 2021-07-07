//
//  HomeViewController.swift
//  NormalSourceAPP
//
//  Created by Sunfairy136 on 2021/7/6.
//

import Foundation
import UIKit


class DIHomeViewController: BaseViewController{
   
    override func viewDidLoad() {
        super.viewDidLoad();
        self.setTitle(text: "文字");
        //新建视图
        self.setUI();
    }
    
    func setUI() {
        let home:DIHomeBrowserViewController = DIHomeBrowserViewController();
        self.navigationController?.pushViewController(home, animated: true);
        
    }
    
    


}
