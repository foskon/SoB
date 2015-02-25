//
//  AppDelegate.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit

@UIApplicationMain
public class AppDelegate: UIResponder, UIApplicationDelegate {

    public var window: UIWindow?
    public var appDependencies = AppDependencies()
    

    public func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        if let runningTests = NSProcessInfo.processInfo().environment["RUNNING_TESTS"] as? String {
            if runningTests == "true" {
                return true
            }
        }
        
        appDependencies.installRootViewControllerIntoWindow(self.window!)
        
        return true
    }
}

