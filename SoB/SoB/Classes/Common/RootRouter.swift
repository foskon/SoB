//
//  RootRouter.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 26/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//


import UIKit


class RootRouter: NSObject
{
    
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        
        let navigationController = inWindow.rootViewController as UINavigationController
        navigationController.viewControllers = [viewController]
    }
    
}
