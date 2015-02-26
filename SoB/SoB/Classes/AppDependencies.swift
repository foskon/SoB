//
//  AppDependencies.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 25/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//


import UIKit


public class AppDependencies: NSObject
{
    var lootCardsRouter: LootCardsRouter!
    
    
    public override init() {
        
        super.init()
        
        self.setupDependencies()
    }
    
    
    public init(lootCardsRouter: LootCardsRouter) {
        
        self.lootCardsRouter = lootCardsRouter
        
        super.init()
    }
    
    
    func setupDependencies() {
        
        let rootRouter      = RootRouter()
        
        let lootCardsRouter = LootCardsRouter()
        lootCardsRouter.rootRouter = rootRouter
        
        self.lootCardsRouter = lootCardsRouter
    }
    
    
    public func installRootViewControllerIntoWindow(window: UIWindow) {
        
        lootCardsRouter.presentLootCardsInterfaceFromWindow(window)
    }
}




