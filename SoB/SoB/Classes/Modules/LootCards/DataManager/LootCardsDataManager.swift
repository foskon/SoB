//
//  LootCardsDataManager.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit

class LootCardsDataManager: NSObject
{
    func lootCardRandomly(complete: (() -> Void)?) {

        
        if let lComplete = complete {
            lComplete()
        }
    }
}
