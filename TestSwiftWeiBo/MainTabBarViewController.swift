//
//  MainTabBarViewController.swift
//  TestSwiftWeiBo
//
//  Created by yi cai on 2017/4/21.
//  Copyright © 2017年 gdgsg. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        HomeViewController 
        let homeVC = HomeViewController()
        let profileVC = ProfileViewController()
        let discoverVC = DiscoverViewController()
        let messageVC = MessageViewController()
        
        self.addChileViewController(childVC: homeVC, imageName: "tabbar_home", title: "主页")
        self.addChileViewController(childVC: messageVC, imageName: "tabbar_message_center", title: "消息")
        self.addChileViewController(childVC: discoverVC, imageName: "tabbar_discover", title: "广场")
        self.addChileViewController(childVC: profileVC, imageName: "tabbar_profile", title: "我")
        
    
    }
    
    func addChileViewController(childVC:UIViewController,imageName:String,title:String) {
        let nav : MainNavController = MainNavController(rootViewController: childVC)
        childVC.tabBarItem.image = UIImage(imageLiteralResourceName: imageName)
        childVC.tabBarItem.selectedImage = UIImage(imageLiteralResourceName: imageName + "_highlighted")
        
        childVC.tabBarItem.title = title
        self.addChildViewController(nav)
        
    }
}
