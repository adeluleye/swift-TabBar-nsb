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
        
        let videoController = createNavController(vc: VideoViewController(), selected: UIImage(named: "video_white"), unselected: UIImage(named: "video_black"))
        
        let favoriteController = createNavController(vc: FavoriteViewController(), selected: UIImage(named: "star_white"), unselected: UIImage(named: "star_black"))
        
        
        viewControllers = [videoController, favoriteController]
        
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 4, left: 0, bottom: -4, right: 0)
        }
    }

}

extension UITabBarController {
    
    func createNavController(vc: UIViewController, selected: UIImage?, unselected: UIImage?) -> UINavigationController {
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselected?.withRenderingMode(.alwaysOriginal)
        navController.tabBarItem.selectedImage = selected?.withRenderingMode(.alwaysOriginal)
        
        return navController
    }
}

