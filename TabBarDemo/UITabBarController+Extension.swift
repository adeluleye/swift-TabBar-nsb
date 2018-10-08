//
//  UITabBarController+Extension.swift
//  TabBarDemo
//
//  Created by ADELU ABIDEEN ADELEYE on 10/8/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//

import UIKit

extension UITabBarController {
    
    func createNavController(vc: UIViewController, selected: UIImage?, unselected: UIImage?) -> UINavigationController {
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselected?.withRenderingMode(.alwaysOriginal)
        navController.tabBarItem.selectedImage = selected?.withRenderingMode(.alwaysOriginal)
        
        return navController
    }
}
