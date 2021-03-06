//
//  AppDelegate.swift
//  MasterClub
//
//  Created by apple on 17/2/13.
//  Copyright © 2017年 beijingkeji. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let SCREEN_WIDTH = UIScreen.main.bounds.width
    let SCREEN_HEIGHT = UIScreen.main.bounds.height
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
      
        self.window = UIWindow(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        self.window?.makeKeyAndVisible()
        
        setupTabBar()

        return true
    }

    
    func setupTabBar(){
        
        let tabbarController = UITabBarController()
        let homeController = MCNavigationViewController(rootViewController: HomeViewController())
        let friendController = MCNavigationViewController(rootViewController: FriendViewController())
        let articleController = MCNavigationViewController(rootViewController: LibraryViewController())
        let answerController = MCNavigationViewController(rootViewController: InterlocutionTableViewController())
        let meController = MCNavigationViewController(rootViewController: UIViewController())
        
        tabbarController.viewControllers = [homeController,friendController,articleController,answerController,meController]
        
        let tabbarItem1 = UITabBarItem(title: "首页", image: UIImage(named: "CD"), selectedImage: UIImage(named: "CD"))
        let tabbarItem2 = UITabBarItem(title: "朋友", image: UIImage(named: "CD"), selectedImage: UIImage(named: "CD"))
        let tabbarItem3 = UITabBarItem(title: "文库", image: UIImage(named: "CD"), selectedImage: UIImage(named: "CD"))
        let tabbarItem4 = UITabBarItem(title: "问答", image: UIImage(named: "CD"), selectedImage: UIImage(named: "CD"))
        let tabbarItem5 = UITabBarItem(title: "我的", image: UIImage(named: "CD"), selectedImage: UIImage(named: "CD"))
        
        
        homeController.tabBarItem = tabbarItem1
        friendController.tabBarItem = tabbarItem2
        articleController.tabBarItem = tabbarItem3
        answerController.tabBarItem = tabbarItem4
        meController.tabBarItem = tabbarItem5
        
//        homeController.tabBarController?.tabBar.tintColor = UIColor.red
        self.window?.rootViewController = tabbarController
        
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


}

