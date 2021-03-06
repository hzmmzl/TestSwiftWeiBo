//
//  AppDelegate.swift
//  TestSwiftWeiBo
//
//  Created by yi cai on 2017/4/21.
//  Copyright © 2017年 gdgsg. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.backgroundColor = UIColor(red: 0, green: 1, blue: 0.4, alpha: 1)
        let mainVC = MainTabBarViewController()
        window?.rootViewController = mainVC
        
        window?.makeKeyAndVisible()
        
        return true
    }
    
    func switchRootViewController() {
        
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
  /* 测试3d touch
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        var actionString:String?
        switch shortcutItem.localizedTitle {
        case "分享记账":
            actionString = "调用分享"
            break
            
        default:
            actionString = "进入快速记一笔"
            break
        }
        let alertController = UIAlertController(title: "温馨提示" , message: actionString!, preferredStyle: .alert);
        alertController.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
        let okAction = UIAlertAction(title: "确定", style: .default) { (action) in
            print("进入记一笔页面")
        }
        alertController.addAction(okAction)
//        alertController.show(<#T##vc: UIViewController##UIViewController#>, sender: <#T##Any?#>)
        self.window?.rootViewController?.present(alertController, animated: true, completion: nil)
    }
 */


}

