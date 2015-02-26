//
//  LootCardsRouter.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 25/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//


import UIKit


let kLootCardsViewControllerID = "LootCardsViewController"

public class LootCardsRouter
{
    var rootRouter: RootRouter?
    var lootCardsVC: LootCardsViewController?
    
    
    public  init() {
        
    }
    
    
    public func presentLootCardsInterfaceFromWindow(window: UIWindow) {
        
        let lootCardsVC = self.lootCardsViewControllerFromStoryboard()
        self.lootCardsVC = lootCardsVC
        
        self.rootRouter?.showRootViewController(lootCardsVC, inWindow: window)
    }
    
    
    func lootCardsViewControllerFromStoryboard() -> LootCardsViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let lootCardsVC = storyboard.instantiateViewControllerWithIdentifier(kLootCardsViewControllerID) as LootCardsViewController
        return lootCardsVC;
    }
}




