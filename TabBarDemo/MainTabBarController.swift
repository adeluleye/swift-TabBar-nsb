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
        setupTabBar()
    }
    
    func setupTabBar() {
        
        let videoViewController = UINavigationController(rootViewController: VideoViewController())
        videoViewController.tabBarItem.image = UIImage(named: "video_black")?.withRenderingMode(.alwaysOriginal)
        videoViewController.tabBarItem.selectedImage = UIImage(named: "video_white")?.withRenderingMode(.alwaysOriginal)
        
        let favoriteViewController = UINavigationController(rootViewController: FavoriteViewController())
        favoriteViewController.tabBarItem.image = UIImage(named: "star_black")?.withRenderingMode(.alwaysOriginal)
        favoriteViewController.tabBarItem.selectedImage = UIImage(named: "star_white")?.withRenderingMode(.alwaysOriginal)
        
        viewControllers = [videoViewController, favoriteViewController]
    }


}

