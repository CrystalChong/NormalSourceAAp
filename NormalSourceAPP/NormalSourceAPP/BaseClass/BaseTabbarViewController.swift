//
//  BaseTabbarViewController.swift
//  NormalSourceAPP
//
//  Created by Sunfairy136 on 2021/7/6.
//

import Foundation
import UIKit

class BaseTabbarViewController: UITabBarController , UITabBarControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.delegate = self;
        self.tabBar.isTranslucent = true;
        self.tabBar.barTintColor = UIColor.white;
        self.reloadVC()
    }
    func reloadVC() {
        self.viewControllers = nil;
        let arr = NSMutableArray();
        for _ in 0...2 {
            let nav = self.addChildVC(nav: BaseNavgationController.init(rootViewController: DIHomeViewController()));
            nav.tabBarItem.title = "首页";
            arr.add(nav);
        }
        self.viewControllers = arr as? [UIViewController];
    }
    func addChildVC(nav: BaseNavgationController) -> BaseNavgationController {
        let nav = nav;// BaseNavgationController.init(rootViewController: DIHomeViewController());
        nav.tabBarItem.image = UIImage.init(named: "jinianri_Nose")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal);
        nav.tabBarItem.selectedImage = UIImage.init(named: "jinianri")?.withRenderingMode(.alwaysOriginal);
        nav.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray], for: .normal)
        nav.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.colorWithHexString("#14C3A9")], for: .selected)
        return nav;
    }
    
}

