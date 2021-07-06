//
//  BaseNavgationController.swift
//  NormalSourceAPP
//
//  Created by Sunfairy136 on 2021/7/6.
//

import Foundation
import UIKit
class BaseNavgationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        /*
         // 设置导航栏的背景颜色
         self.navigationController.navigationBar.barTintColor = UIColor.redColor()

         // 设置导航栏标题的字体颜色(1)
         self.navigationController.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont("字体名", ofSize: 15)]

         // 设置导航栏标题的字体颜色(2)
         设置navigationItem的titleView 通过view中的label属性去改变字体和颜色  self.navigationItem.titleView

         // 设置导航栏的按钮图标等的颜色(ToolBar)
         self.navigationController.navigationBar.tintColor = UIColor.orangeColor()
         */
    }
    
}

