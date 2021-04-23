//
//  TabBarViewController.swift
//  feedup
//
//  Created by Agustian DM on 23/04/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }
    
    //MARK: - ConfigureUI
    func configureTabBar() {
        let home = HomeViewController()
        let explore = ExploreViewController()
        let camera = CameraViewController()
        let notifications = NotificationsViewController()
        let profile = ProfileViewController()
        
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: explore)
        let nav3 = UINavigationController(rootViewController: notifications)
        let nav4 = UINavigationController(rootViewController: profile)
        
        nav1.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "square.grid.2x2.fill"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "grid"), tag: 2)
        camera.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "square.and.arrow.up.fill"), tag: 3)
        nav3.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "bell"), tag: 4)
        nav4.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "power"), tag: 5)
        
        setViewControllers([nav1, nav2, camera, nav3, nav4], animated: false)
    }
    
}
