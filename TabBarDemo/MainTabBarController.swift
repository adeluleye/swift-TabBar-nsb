//
//  ViewController.swift
//  TabBarDemo
//
//  Created by ADELU ABIDEEN ADELEYE on 10/8/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = UIColor(red: 38/255, green: 196/255, blue: 133/255, alpha: 1)
    }
    
    func setupTabBar() {
        
        let videoViewController = UINavigationController(rootViewController: VideoViewController())
        videoViewController.tabBarItem.image = UIImage(named: "video_black")
        videoViewController.tabBarItem.selectedImage = UIImage(named: "video_white")
        
        let favoriteViewController = UINavigationController(rootViewController: FavoriteViewController())
        favoriteViewController.tabBarItem.image = UIImage(named: "star_black")
        favoriteViewController.tabBarItem.selectedImage = UIImage(named: "star_white")
        
        viewControllers = [videoViewController, favoriteViewController]
    }


}

