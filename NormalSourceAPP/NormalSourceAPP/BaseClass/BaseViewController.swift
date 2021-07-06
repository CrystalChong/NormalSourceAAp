//
//  BaseViewController.swift
//  NormalSourceAPP
//
//  Created by Sunfairy136 on 2021/7/6.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
    }
    func setTitle(text:String) {
        let label = UILabel.init();
        label.text = text;
        label.textColor = UIColor.color333();
        self.navigationController?.topViewController?.navigationItem.titleView = label;
    }
    
}
